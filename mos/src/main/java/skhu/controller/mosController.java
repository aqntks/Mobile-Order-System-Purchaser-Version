package skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import skhu.dto.Menu1;
import skhu.mapper.Menu1Mapper;


@Controller
@RequestMapping("/")
public class mosController {

	@Autowired Menu1Mapper menu1Mapper;

	@RequestMapping("main")
	public String main(Model model) {
		return "main";
	}

	@RequestMapping("order_checkpage")
	public String order_checkpage(Model model) {
		return "order_checkpage";
	}

	@RequestMapping("order_page")
	public String order_page(Model model) {
		List<Menu1> menus = menu1Mapper.findAll();
		model.addAttribute("menus", menus);
		return "order_page";
	}

	@RequestMapping(value="/basket_page", method=RequestMethod.GET)
	public String basket_page(Model model) {
		return "basket_page";
	}

	@RequestMapping(value="/payment_page", method=RequestMethod.GET)
	public String payment_page(Model model) {
		return "payment_page";
	}

	@RequestMapping("seller_main")
	public String seller_main(Model model) {
		return "seller_main";
	}

	@RequestMapping(value="/menu_management_page", method=RequestMethod.GET)
	public String menu_management_page(Model model) {
		List<Menu1> menus = menu1Mapper.findAll();
		model.addAttribute("menus", menus);
		return "menu_management_page";
	}
	
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

    @RequestMapping("delete")
    public String delete(Model model, @RequestParam("id") int id) {
        menu1Mapper.delete(id);
        
      //  menu1Mapper.updateid();
        return "redirect:menu_management_page";
    }
}
