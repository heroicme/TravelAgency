package demo;

/**
 * Created by popcorn on 2018/6/3.
 */
public class TestAopImpl implements TestAop {
    @Override
    public int add(int i, int j) {
        return i+j;
    }

    @Override
    public int sub(int i, int j) {
        return i-j;
    }
}
