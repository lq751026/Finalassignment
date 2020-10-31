package com.lq.controller;

import com.github.pagehelper.PageInfo;
import com.lq.bean.*;
import com.lq.dao.AppDao;
import com.lq.service.AppSerivce;
import com.lq.service.RoleSerivcer;
import com.lq.service.SortSerivce;
import com.lq.service.UserSerivce;
import com.lq.utile.PasswordEncryp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class Qcontroller {
    @Autowired
    private AppSerivce appSerivce;
    @Autowired
    private AppDao appDao;
    @Autowired
    private SortSerivce sortSerivce;
    @Autowired
    private UserSerivce userSerivce;
    @Autowired
    private RoleSerivcer roleSerivcer;

    @RequestMapping("/saveUser")
    public String saveUser(User user, Model model) {
        try {
            user.setPassword(PasswordEncryp.getPaawordEncryp(user.getPassword()));
             user.setRole_id(1);
            userSerivce.saveUser(user);
            model.addAttribute("msg", "注册成功，请开始登录把！");
        } catch (Exception e) {
            model.addAttribute("msg", "注册失败");
        }
        return "forward:/";
    }

    @RequestMapping("findByUsername")
    @ResponseBody
    public String findByUsername(User user) {
        int i = 1;
        try {
            User user1 = userSerivce.findByname(user);
            if (user1 != null) {
                i = 0;
            }
        } catch (Exception e) {
            i = 0;
        }
        return i + "";
    }

    /**
     * 登录判断
     *
     * @param model
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public String imges(Model model, User user, HttpServletRequest request) {
        String path = "forward:/";
        User user2 = (User) request.getSession().getAttribute("user");
        if (user2 != null) {
            Role role = (Role) request.getSession().getAttribute("role");
            model.addAttribute("msg", "欢迎您回来：" + role.getRole_name() + "," + user2.getUsername());
            return "login";
        }
        if (user.getUsername() == null || user.getPassword() == null) {
            model.addAttribute("msg", "请输入用户名或者是密码！");
        }
        try {
            User user1 = userSerivce.findByUser(user);
            if (user1 != null && PasswordEncryp.IfPassowrd(user.getPassword(), user1.getPassword())) {
                Role role = roleSerivcer.findRolerById(user1.getRole_id());
                request.getSession().setAttribute("role", role);
                request.getSession().setAttribute("user", user);
                model.addAttribute("msg", "欢迎您回来，" + role.getRole_name() + "," + user1.getUsername());
                path = "login";
            } else {
                model.addAttribute("msg", "密码错误！");
            }
        } catch (Exception e) {
            model.addAttribute("msg", "用户名或者是密码错误！");
        }
        return path;
    }

    @RequestMapping("/logout.do")
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("role");
        request.setAttribute("msg", "注销成功！");
        return "forward:/";
    }


    /**
     * 查询app管理+分页
     *
     * @param model
     * @param pages
     * @param size
     * @return
     */
    @RequestMapping("/user")
    public String userfindAll(Model model, @RequestParam(value = "pages", defaultValue = "1") Integer pages, @RequestParam(value = "size", defaultValue = "5") Integer size) {
        Pahader<Application> pahader = new Pahader(pages, size, appDao.findTotal());
        List<Application> apps = appSerivce.findAll();
        pahader.setList(apps);
        Sort sort = sortSerivce.findAll();
        model.addAttribute("sort", sort);
        model.addAttribute("pahader", pahader);
        return "app-list";
    }

    /**
     * 分类+分页
     *
     * @param model
     * @param one
     * @param two
     * @param three
     * @param pages
     * @param size
     * @return
     */
    @RequestMapping("/sort")
    public String classS(Model model, @RequestParam("one") Integer one, @RequestParam("two") Integer two, @RequestParam("three") Integer three, @RequestParam(value = "pages", defaultValue = "1") Integer pages, @RequestParam(value = "size", defaultValue = "5") Integer size) {
        if (one == 1 && two == 1 & three == 1 || one == null) {
            return "forward:user";
        }
        Sort sort = new Sort();
        sort.setOne_id(one);
        sort.setTwo_id(two);
        sort.setThree_id(three);
        Sort sorts = sortSerivce.findById(sort);
        Pahader<Application> pahader = new Pahader(pages, size, sorts.getApplications().size());
        pahader.setList(sorts.getApplications());
        model.addAttribute("sorts", sort);
        Sort sosrt = sortSerivce.findAll();
        model.addAttribute("sort", sosrt);
        model.addAttribute("pahader", pahader);
        return "app-list";
    }

    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/appAdd")
    public String appAdd(Model model) {
        Sort sort = sortSerivce.findAll();
        model.addAttribute("sort", sort);
        return "app-add";
    }

    /**
     * app应用的添加
     *
     * @param file
     * @param application
     * @param model
     * @return
     */
    @RequestMapping("/app_add")
    public String app_add(MultipartFile file, Application application, Model model) {
        if (application.getName() == null || application.getSize() == 0 || application.getPlatform() == null || application.getVersions() == null || application.getDeploy() == null || application.getLanguage() == null
                || application.getDowntimes() == null) {
            model.addAttribute("msg", "添加失败参数不足");
            return "forward:appAdd";
        } else {
            // 获取文件名，带后缀
            String originalFilename = file.getOriginalFilename();
            // 只有当满足图片格式时才进来，重新赋图片名，防止出现名称重复的情况
            String fileSuffix = originalFilename.substring(originalFilename.lastIndexOf(".") + 1).toLowerCase();
            String newFileName = UUID.randomUUID().toString().replace("-", "") + originalFilename;
            // 该方法返回的为当前项目的工作目录，即在哪个地方启动的java线程
            String dirPath = "C:\\Users\\李庆\\Desktop\\开发中的项目\\期末作业\\web\\img\\";
            String path = dirPath + newFileName;
            File destFile = new File(path);
            if (!destFile.getParentFile().exists()) {
                destFile.getParentFile().mkdirs();
            }
            try {
                file.transferTo(destFile);
                String logo = "img/" + newFileName;
                application.setStatus(1);//默认没上架
                application.setLogo(logo);
                appSerivce.saveApplication(application);
            } catch (IOException e) {
                model.addAttribute("msg", "添加失败参数不足");
                return "forward:appAdd";
            }
            model.addAttribute("msg", "添加成功");
            return "forward:user";
        }
    }

    /**
     * 删除
     *
     * @param
     * @param
     * @return
     */
    @RequestMapping("appDelete")
    public String appDelete(Application app, Model model) {
        try {
            int i = appSerivce.deleteAppById(app);
            if (i < 0) {
                model.addAttribute("msg", "删除成功！");
            }
        } catch (Exception e) {
            model.addAttribute("msg", "删除失败！");
        }
        return "forward:user";
    }

    @RequestMapping("/status")
    public String appstatus(Application app, Model model) {
        String s = "";
        try {
            if (app.getStatus() == 3) {
                app.setStatus(5);
                s = "上架";
            } else {
                app.setStatus(3);
                s = "下架";
            }
            int i = appSerivce.updateStatus(app);
            if (i > 0) {
                model.addAttribute("msg", s + "成功");
            }
        } catch (Exception e) {
            model.addAttribute("msg", s + "失败");
        }
        return "forward:user";
    }

    @RequestMapping("/update")
    public String update(Application app1, Model model) {
        Sort sort = sortSerivce.findAll();
        model.addAttribute("sort", sort);
        Application app = appSerivce.findById(app1.getId());
        model.addAttribute("app", app);
        return "app--xq-update";
    }

    /**
     * 修改+logo的修改
     *
     * @param app
     * @param model
     * @param file
     * @return
     */
    @RequestMapping("/update-dealWith")
    public String dealWith(Application app, Model model, MultipartFile file) {
        if (!file.isEmpty()) {
            // 获取文件名，带后缀
            String originalFilename = file.getOriginalFilename();
            // 只有当满足图片格式时才进来，重新赋图片名，防止出现名称重复的情况
            String fileSuffix = originalFilename.substring(originalFilename.lastIndexOf(".") + 1).toLowerCase();
            String newFileName = UUID.randomUUID().toString().replace("-", "") + originalFilename;
            // 该方法返回的为当前项目的工作目录，即在哪个地方启动的java线程
            String dirPath = "C:\\Users\\李庆\\Desktop\\开发中的项目\\期末作业\\web\\img\\";
            String path = dirPath + newFileName;
            File destFile = new File(path);
            if (!destFile.getParentFile().exists()) {
                destFile.getParentFile().mkdirs();
            }

            try {
                file.transferTo(destFile);
            } catch (IOException e) {
                model.addAttribute("msg", "修改失败");
            }
            String logo = "img/" + newFileName;
            app.setLogo(logo);
        }

        int i = appSerivce.updateApp(app);
        model.addAttribute("msg", "修改成功");
        Application app1 = appSerivce.findById(app.getId());
        model.addAttribute("app", app1);
        model.addAttribute("app", app);
        return "forward:update";
    }

    @RequestMapping("/updateStatuss")
    public String updateStatus(Application app, Model model) {
        if (app.getStatus() == null || app.getId() == null) {
            model.addAttribute("msg", "抱歉参数不足!");

        } else {
           int i= appSerivce.updateStatuS(app);
           model.addAttribute("msg","审核状态修改成功！");
        }
        return "forward:user";
    }
}