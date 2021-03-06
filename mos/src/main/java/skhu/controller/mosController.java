package skhu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import skhu.dto.Basket;
import skhu.dto.Menu1;
import skhu.dto.Middle;
import skhu.dto.OrderList;
import skhu.dto.SalesStatus;
import skhu.mapper.BasketMapper;
import skhu.mapper.Menu1Mapper;
import skhu.mapper.OrderListMapper;
import skhu.mapper.SalesStatusMapper;

@Controller
@RequestMapping("/")
public class mosController {

	@Autowired Menu1Mapper menu1Mapper;
	@Autowired BasketMapper basketMapper;
	@Autowired OrderListMapper orderListMapper;
	@Autowired SalesStatusMapper salesStatusMapper;

	//구매자----------------------------------------------------------------------------------

	//구매자 메인 화면
	@RequestMapping("main")
	public String main(Model model) {
		return "main";
	}

	@RequestMapping("purchaser_main")
	public String purchaser_main(Model model) {
		return "purchaser_main";
	}
	
	//판매 시작 전 페이지
	@RequestMapping("unstart_page")
	public String unstart_page(Model model) {
		return "unstart_page";
	}

	//주문 화면
	@RequestMapping("order_page")
	public String order_page(Model model) {
		if(salesStatusMapper.findOne(1).getOnoff2() == 0)
			return "unstart_page";
		
		else {
		Basket basket = new Basket();
		model.addAttribute("basket", basket);
		List<Menu1> menus = menu1Mapper.findAll();
		model.addAttribute("menus", menus);
		List<Basket> baskets = basketMapper.findAll();
		model.addAttribute("baskets", baskets);

		int result = 0;
		for(Basket bs : baskets) {
			result += bs.getMenuPrice() * bs.getCount();
		}
		model.addAttribute("count", result);
		return "order_page";
		}
	}

	//장바구니 화면
	@RequestMapping(value="basket_page", method=RequestMethod.GET)
	public String basket_page(Model model) {
		List<Basket> baskets = basketMapper.findAll();
		model.addAttribute("baskets", baskets);
		int result = 0;
		for(Basket bs : baskets) {
			result += bs.getMenuPrice() * bs.getCount();
		}
		model.addAttribute("count", result);
		return "basket_page";
	}

	@RequestMapping(value="basket_page", method=RequestMethod.POST)
	public String basket_page2(Model model) {
		List<Basket> baskets = basketMapper.findAll();
		model.addAttribute("baskets", baskets);
		int result = 0;
		for(Basket bs : baskets) {
			result += bs.getMenuPrice() * bs.getCount();
		}
		model.addAttribute("count", result);
		return "basket_page";
	}

	//결제 선택 화면
	@RequestMapping(value="payment_page", method=RequestMethod.GET)
	public String payment_page(Model model) {
		return "payment_page";
	}

	//장바구니 추가
	@RequestMapping(value="basketInsert", method=RequestMethod.POST)
	public String basketInsert(Model model, Basket basket) {
		Basket check = basketMapper.findByName(basket.getMenuName());
		if(check == null) {
			basketMapper.insert(basket);
		}
		else {
			check.setCount(check.getCount() + 1);
			basketMapper.update(check);
		}
		return "redirect:order_page";
	}

	//장바구니 삭제
	@RequestMapping("basketDelete")
	public String basketDelete(Model model, @RequestParam("id") int id) {
		Basket check = basketMapper.findOne(id);
		if(check.getCount() > 1) {
			check.setCount(check.getCount() - 1);
			basketMapper.update(check);
		}
		else {
			basketMapper.delete(id);
		}
		return "redirect:basket_page";
	}

	//결과화면 전 처리과정
	@RequestMapping(value="middle_page", method=RequestMethod.GET)
	public String middle_page(Model model) {
		//장바구니 -> 주문DB
		List<Basket> baskets = basketMapper.findAll();
		OrderList orderList = new OrderList();

		String temp = "";
		String temp2 = "";

		for(Basket one : baskets) {
			temp += one.getMenuName() + " ";
			temp += one.getCount() + " ";
			temp += "<br>";
		}
		
		for(Basket two : baskets) {
			temp2 += two.getMenuName() + " ";
			temp2 += two.getCount() + " ";
		}

		model.addAttribute("baskets", baskets);
		int result = 0;
		for(Basket bs : baskets) {
			result += bs.getMenuPrice() * bs.getCount();
		}

		orderList.setPrice(result);
		orderList.setMenuList(temp);

		orderListMapper.insert(orderList);

		//주문번호 임시방편
		OrderList orderTemp = orderListMapper.findByMenuList(temp);
		int orderNumber = orderTemp.getId();

		model.addAttribute("count", result);
		model.addAttribute("temp", temp2);
		model.addAttribute("orderNumber", orderNumber);


		//장바구니 내용 삭제
		for(Basket b : baskets) {
			basketMapper.delete(b.getId());
		}
		return "middle_page";
	}

	//결과화면
	@RequestMapping(value="result_page", method=RequestMethod.GET)
	public String result_page(Model model, Middle middle) {
		//판매 종료되면 판매 종료 페이지로 넘어감
		if(salesStatusMapper.findOne(1).getOnoff2() == 0)
			return "unstart_page";
		
		List<OrderList> ordersList = orderListMapper.findAll();
		String state = "조리가 완료되었습니다. 메뉴를 찾아가 주세요.";
		String[] menuList = middle.getMenuList().split(" ");
		List<Basket> lb = new ArrayList<Basket>();
		
		for(int i = 0; i < menuList.length; i+=2) {
			Basket bk = new Basket();
			bk.setMenuName(menuList[i]);
			bk.setCount(Integer.parseInt(menuList[i+1]));
			lb.add(bk);
		}

		model.addAttribute("orderNumber", middle.getOrderNumber());
		model.addAttribute("count", middle.getCount());
		model.addAttribute("baskets", lb);

		for(OrderList temp : ordersList) {
			if(middle.getOrderNumber() == temp.getId()) {
				state = "조리 중입니다.";
			}
		}
		model.addAttribute("state", state);  //true 조리중 false 조리 완료

		return "result_page";
	}

	//판매자------------------------------------------------------------------------

	//판매자 메인 화면
	@RequestMapping("seller_main")
	public String seller_main(Model model) {
		return "seller_main";
	}
	
	@RequestMapping("seller_main_design")
	public String seller_main_design(Model model) {
		return "seller_main_design";
	}

	//판매 화면
	@RequestMapping(value="sales_page", method=RequestMethod.GET)
	public String sales_page(Model model) {
		List<OrderList> ordersList = orderListMapper.findAll();
		List<Menu1> menus = menu1Mapper.findAll();
		model.addAttribute("ordersList", ordersList);
		model.addAttribute("menus", menus);
		SalesStatus st = new SalesStatus();
		st.setId(1);
		st.setOnoff2(1);
		salesStatusMapper.update(st);
		return "sales_page";
	}
	
	//판매 종료 기능
	@RequestMapping("finishs")
	public String finishs(Model model) {
		SalesStatus st = new SalesStatus();
		st.setId(1);
		st.setOnoff2(0);
		salesStatusMapper.update(st);
		return "seller_main_design";
	}

	//메뉴 관리화면
	@RequestMapping(value="menu_management_page", method=RequestMethod.GET)
	public String menu_management_page(Model model) {
		List<Menu1> menus = menu1Mapper.findAll();
		model.addAttribute("menus", menus);
		return "menu_management_page";
	}

	//메뉴 추가
	@RequestMapping(value="create", method=RequestMethod.GET)
	public String add_menu_page(Model model) {	
		Menu1 menu1 = new Menu1();
		model.addAttribute("menu1", menu1);
		return "edit_menu_page";	
	}

	@RequestMapping(value="create", method=RequestMethod.POST)
	public String create(Model model, Menu1 menu1) {
		menu1Mapper.insert(menu1);
		return "redirect:menu_management_page";
	}

	//메뉴 수정
	@RequestMapping(value="edit", method=RequestMethod.GET)
	public String edit(Model model, @RequestParam("id") int id) {
		Menu1 menu1 = menu1Mapper.findOne(id);
		model.addAttribute("menu1", menu1);
		return "edit_menu_page";
	}

	@RequestMapping(value="edit", method=RequestMethod.POST)
	public String edit(Model model, Menu1 menu1) {
		menu1Mapper.update(menu1);
		return "redirect:menu_management_page";
	}

	//메뉴 삭제
	@RequestMapping("delete")
	public String delete(Model model, @RequestParam("id") int id) {
		menu1Mapper.delete(id);
		return "redirect:menu_management_page";
	}

	@RequestMapping("finish")
	public String finish(Model model, @RequestParam("id") int id) {
		orderListMapper.delete(id);
		return "redirect:sales_page";
	}
}
