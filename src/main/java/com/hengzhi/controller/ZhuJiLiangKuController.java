package com.hengzhi.controller;

import com.hengzhi.entity.Condition;
import com.hengzhi.entity.User;
import com.hengzhi.entity.ZhuJiLiangKu;
import com.hengzhi.service.ZhuJiLiangKuServer;
import jdk.nashorn.internal.ir.annotations.Reference;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import sun.swing.BakedArrayList;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "showZhuJiLiangKu")
public class ZhuJiLiangKuController {
    @Autowired
    ZhuJiLiangKuServer zhuJiLiangKuServer;

    @RequestMapping(value = "main")
    public String showZhuJiLiangKu(Model model) {
        List<ZhuJiLiangKu> list = zhuJiLiangKuServer.showZhuJiLiangKu();
        model.addAttribute("zhujiliangku", list);
        return "ShowZhuJiLiangKu";
    }

    @RequestMapping(value = "souSuo")
    public String TiaoJianChaXun(Model model, Condition condition) {
        return "TiaoJianChaXun";
    }

//统计总车数与总净重数
    @RequestMapping(value = "tongji")
    public String tongji(Model model,Condition condition){
        int total_cars=zhuJiLiangKuServer.tongJiCheShu(condition);
        int total_jingzhong=zhuJiLiangKuServer.tongJiJingZhong(condition);
        model.addAttribute("total_cars",total_cars);
        model.addAttribute("total_jingzhong",total_jingzhong);
        return "";
    }


    @RequestMapping(value = "result", method = RequestMethod.POST)
    public String chaXunJieGuo(Model model, Condition condition) {
        List<ZhuJiLiangKu> list = zhuJiLiangKuServer.tiaoJianChaXun(condition);
        model.addAttribute("zhujiliangku", list);
        return "ShowZhuJiLiangKu";
    }
    @RequestMapping(value = "getJson")
    public String getJson(Model model){
        return "GetJson";
    }


    @RequestMapping(value = "/JsonTest")
    @ResponseBody
    public List<User> jsonTest(@RequestBody User user){
        System.out.println(user.getUsername());
        User u=new User();
        User p=new User();
        List<User> list=new ArrayList<User>();
        u.setPassword("778899abc");
        u.setUsername("leiqh");
        p.setPassword("520310");
        p.setUsername("zhaoxq");
        list.add(u);
        list.add(p);
        return list;
                }}
