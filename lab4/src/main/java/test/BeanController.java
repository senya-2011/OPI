package test;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;

@ApplicationScoped
@Named
public class BeanController {
    @Inject
    private ApplicationScopedBean applicationScopedBean;

    @Inject
    private SessionScopedBean sessionScopedBean;

    @Inject
    private RequestScopedBean requestScopedBean;

    @Inject
    private ViewScopedBean viewScopedBean;


    public void incAllX() {
        applicationScopedBean.incX();
        sessionScopedBean.incX();
        requestScopedBean.incX();
        viewScopedBean.incX();
    }
}
