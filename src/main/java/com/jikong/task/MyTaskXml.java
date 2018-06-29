package com.jikong.task;
import com.jikong.entity.Student;
import com.jikong.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/**
 * @wtk
 **/

/**
 * 基于xml的定时器
 * @author hj
 */
public class MyTaskXml {
    @Autowired
    StudentService studentService;

    public void show(){

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
        Student student = new Student();
        student.setName("w");
        student.setSex(date);
        student.setCityId((int)(1+Math.random()*(10-1+1)));
        studentService.saveStudent(student);
        System.out.println(date);
    }

    public void print(){
        System.out.println("XMl:print run");
    }
}
