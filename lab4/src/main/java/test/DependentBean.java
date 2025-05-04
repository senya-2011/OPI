package test;

import jakarta.enterprise.context.Dependent;
import jakarta.inject.Named;

@Named
@Dependent
public class DependentBean {
    private int x=0;

    public int getX(){
        return x;
    }
    public void incX(){
        x++;
    }
}
