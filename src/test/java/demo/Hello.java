package demo;

/**
 * Created by popcorn on 2018/6/2.
 */
public class Hello {
    private  String name;
private int age;
    public void setName(String name) {
        this.name = name;
    }

    public void say(){
        System.out.println("hello====="+this.name);

    }

    public Hello() {
    }

    public Hello(String name,int age) {
        this.name = name;
        this.age=age;
    }

    @Override
    public String toString() {
        return "Hello{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}



