package test;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Named;

@Named("applicationScopedBean")
@ApplicationScoped
public class ApplicationScopedBean {
    private int x=0;

    public int getX(){
        return x;
    }
    public void incX(){
        x++;
    }
}
