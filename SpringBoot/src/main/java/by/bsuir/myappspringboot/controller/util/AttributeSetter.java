package by.bsuir.myappspringboot.controller.util;

import org.springframework.ui.Model;

import java.text.SimpleDateFormat;
import java.util.Date;

public final class AttributeSetter {

    private final static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");

    public static void setAttributes(Model model,boolean correctIn,int correctReg){
        model.addAttribute("notIn",correctIn);
        model.addAttribute("notReg",correctReg);
        model.addAttribute("name", "");
        model.addAttribute("email", "");
        model.addAttribute("apassword", "");
        model.addAttribute("repPassword", "");
        model.addAttribute("phone", "");
        model.addAttribute("nowYear", dateFormat.format(new Date()));
    }

    public static void setAttributesOnRegister(Model model,int correctReg, String name,String mail,String pas,String reppas,String phone){
        model.addAttribute("notIn",false);
        model.addAttribute("notReg",correctReg);
        model.addAttribute("name", name);
        model.addAttribute("email", mail);
        model.addAttribute("apassword", pas);
        model.addAttribute("repPassword", reppas);
        model.addAttribute("phone", phone);
        model.addAttribute("nowYear", dateFormat.format(new Date()));
    }

    public static void setUserAttributes(Model model, double balance, String name){
        model.addAttribute("balance",balance);
        model.addAttribute("name",name);
        model.addAttribute("nowYear", dateFormat.format(new Date()));
    }
}
