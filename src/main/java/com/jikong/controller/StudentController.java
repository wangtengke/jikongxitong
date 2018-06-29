package com.jikong.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jikong.entity.Msg;
import com.jikong.entity.Student;
import com.jikong.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * @wtk
 **/
@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    /**
     *直接用ajax请求
     *@wtk
     *
     **/
    @RequestMapping(value = "/stu")
    @ResponseBody
    public Msg getStuWithJson(@RequestParam(value ="pn",defaultValue ="1")Integer pn){
        //分页查询
        // 传入页码
        PageHelper.startPage(pn,10);
        //startPage后分页查询
        List<Student> stus= studentService.getALL();
        //
        PageHelper.startPage(pn,5);
        PageInfo page =new PageInfo(stus,5);
        return Msg.success().add("PageInfo",page);
    }
    /**
     *
     *@wtk
     *
    **/
    @RequestMapping(value = "/history")
    @ResponseBody
    public Msg getHistory(@RequestParam(value ="pn")String pn){

        //startPage后分页查询
        System.out.println("1");
        List<Student> stus= studentService.getHistory(pn);

        return Msg.success().add("History",stus);
    }
}
