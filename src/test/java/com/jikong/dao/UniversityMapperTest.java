package com.jikong.dao;

import com.jikong.entity.University;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * @wtk
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/applicationContext.xml")
public class UniversityMapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private UniversityMapper universityMapper;
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");//加载spring配置文件
        universityMapper = applicationContext.getBean(UniversityMapper.class);//在这里导入要测试的
    }
    @Test
    public void insert() throws Exception {
        University university = new University();
        university.setId(7);
        university.setUniversity("同济大学");
        int result=universityMapper.insert(university);
        System.out.println(result);
        assert (result == 1);
        System.out.println(universityMapper);
    }

}