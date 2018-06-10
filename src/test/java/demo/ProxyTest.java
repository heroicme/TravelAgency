package demo;


import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

/**
 * Created by popcorn on 2018/6/3.
 */
public class ProxyTest {


    private TestAop test;

    public ProxyTest(TestAop test) {
        this.test = test;
    }

    public TestAop getProxy() {
        TestAop ta = null;
        InvocationHandler invo= new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                System.out.println("方法开始" + method.getName() + "参数" + Arrays.asList(args));


                Object obj = method.invoke(test, args);

                System.out.println("方法结束" + method.getName());
                return obj;
            }
        };
        Class [] inte=new Class[]{TestAop.class};
        ta = (TestAop) Proxy.newProxyInstance(test.getClass().getClassLoader(),inte,invo);


        return ta;
    }


}
