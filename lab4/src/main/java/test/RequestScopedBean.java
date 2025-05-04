package test;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;

@Named("requestScopedBean")
@RequestScoped
public class RequestScopedBean {
    private int x=0;

    public int getX(){
        return x;
    }
    public void incX(){
        x++;
    }
}
