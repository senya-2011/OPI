package test;

import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;

import java.io.Serializable;

@Named("sessionScopedBean")
@SessionScoped
public class SessionScopedBean implements Serializable {
    private int x=0;
    public int getX(){
        return x;
    }
    public void incX(){
        x++;
    }
}
