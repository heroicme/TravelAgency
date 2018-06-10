package demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by popcorn on 2018/6/2.
 */
public class Test {
    public static void main(String[] args) {
        ApplicationContext ct=new ClassPathXmlApplicationContext("applicationContext1.xml");
        Hello h= (Hello) ct.getBean("h1");
        h.say();
        System.out.println(h);



    }



}
