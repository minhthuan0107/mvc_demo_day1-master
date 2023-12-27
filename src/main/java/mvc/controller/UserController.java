package mvc.controller;

import mvc.formregistration1.Gender;
import mvc.formregistration1.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    private  static final  String[] countries = {"Viet Nam","USA","Spain"};
    @RequestMapping(value = "/register")
    public String showRegistrationForm(Model model){
        model.addAttribute("user",new User());
        model.addAttribute("genders", Gender.values());
        model.addAttribute("countries",countries);
        return "formregistration/userForm";
    }
    @RequestMapping(value ="/result")
    public String processUser(User user){
        return "formregistration/userResult";
    }
}
