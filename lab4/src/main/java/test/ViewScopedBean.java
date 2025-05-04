package test;

import jakarta.faces.view.ViewScoped;
import jakarta.inject.Named;

import java.io.Serializable;

@Named("viewScopedBean")
@ViewScoped
public class ViewScopedBean implements Serializable {
    private int x=0;

    public int getX(){
        return x;
    }
    public void incX(){
        x++;
    }
}
