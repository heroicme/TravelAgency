package demo;

/**
 * Created by popcorn on 2018/6/3.
 */
public class Test1 {

    public static void main(String[] args) {
TestAop t1=new TestAopImpl();
        TestAop pt=new ProxyTest(t1).getProxy();
        pt.add(1,2);
        pt.sub(2,1);
    }

}



