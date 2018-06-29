package com.jikong.service;

import com.jikong.dao.StudentMapper;
import com.jikong.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static jdk.nashorn.internal.objects.ArrayBufferView.length;

/**
 * @wtk
 **/
@Service
public class StudentService {
    @Autowired
    StudentMapper studentMapper;
    public List<Student> getALL() {
        List<Student> newlist;
        List<Student>list= studentMapper.selectByExample(null);
        return  list.subList(list.size()-20,list.size());

    }
    public List<Student> getHistory(String time) {
        List<Student> newlist = null;
        List<Student>list= studentMapper.selectByExample(null);
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
//        String date = df.format(time);// new Date()为获取当前系统时间，也可使用当前时间戳
        System.out.println(time);
        for (int i=0;i<list.size();i++){
            if(list.get(i).getSex().contains(time)){
                newlist=list.subList(i,i+20);
//                return  newlist;
                break;
            }
        }
        System.out.println("2");
        return  newlist;

    }

    public void saveStudent(Student student) {
        studentMapper.insertSelective(student);
    }
}
