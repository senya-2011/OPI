package test;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.faces.component.UIComponent;
import jakarta.faces.component.UIOutput;
import jakarta.faces.component.UIViewRoot;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;

@Named
@ApplicationScoped
public class ViewBean {
    public void addText() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        UIViewRoot viewRoot = facesContext.getViewRoot();
        UIOutput newText = new UIOutput();
        newText.setValue("UIViewRoot add text");
        UIComponent form = viewRoot.findComponent("viewForm");
        form.getChildren().add(newText);
    }

    public void changeText() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        UIViewRoot viewRoot = facesContext.getViewRoot();
        UIComponent outputText = viewRoot.findComponent("viewForm:outputText");
        outputText.getAttributes().put("value", "UIViewRootChangeText");
    }
}
