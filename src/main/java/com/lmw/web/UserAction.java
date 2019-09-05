package com.lmw.web;


import com.lmw.beans.User;
import com.lmw.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


@Controller
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User> {

    @Autowired
    private UserService userServiceImpl;
    private User user = new User();

    public String register() {

        String code = ServletActionContext.getRequest().getParameter("code");
        if ("4VYE".equals(code)) {
            User u = userServiceImpl.getUserByName(user);
            if (u == null) {
                System.out.println(user);
                userServiceImpl.register(user);
                return "login";
            } else {
                ActionContext.getContext().put("error", "用户名已存在");
                return "register";
            }
        } else {
            ActionContext.getContext().put("error", "验证码错误");
            return "register";
        }
    }

    public String login() {
        User u = userServiceImpl.login(user);
        if (u != null) {
            ActionContext.getContext().getSession().put("user", u);
            return "index";
        } else {
            ActionContext.getContext().put("error", "用户名或密码错误");
            return "login";
        }
    }

    public String quit() {
        ActionContext.getContext().getSession().remove("user");
        return "index";
    }

    public User getModel() {
        return user;
    }
}
