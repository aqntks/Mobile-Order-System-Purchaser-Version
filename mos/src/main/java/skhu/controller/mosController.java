package skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import skhu.dto.Menu1;
import skhu.mapper.Menu1Mapper;


@Controller
@RequestMapping("/")
public class mosController {

    @Autowired Menu1Mapper menu1Mapper;
    
    @RequestMapping("main")
    public String index(Model model) {
        return "main";
    }
    
    @RequestMapping("order_page")
    public String list(Model model) {
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
    
  /*  @RequestMapping("list")
    public String list(Model model) {
        List<Student> students = studentMapper.findAll();
        model.addAttribute("students", students);
        return "student/list";
    }

    @RequestMapping(value="create", method=RequestMethod.GET)
    public String create(Model model) {
        Student student = new Student();
        List<Department> departments = departmentMapper.findAll();
        model.addAttribute("student", student);
        model.addAttribute("departments", departments);
        return "student/edit";
    }

    @RequestMapping(value="create", method=RequestMethod.POST)
    public String create(Model model, Student student) {
        studentMapper.insert(student);
        return "redirect:list";
    }

    @RequestMapping(value="edit", method=RequestMethod.GET)
    public String edit(Model model, @RequestParam("id") int id) {
        Student student = studentMapper.findOne(id);
        List<Department> departments = departmentMapper.findAll();
        model.addAttribute("student", student);
        model.addAttribute("departments", departments);
        return "student/edit";
    }

    @RequestMapping(value="edit", method=RequestMethod.POST)
    public String edit(Model model, Student student) {
        studentMapper.update(student);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(Model model, @RequestParam("id") int id) {
        studentMapper.delete(id);
        return "redirect:list";
    } */
}
