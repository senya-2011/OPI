package beans;

import db.Factory.DataBaseFactoryManager;
import jakarta.annotation.PostConstruct;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;
import logic.AreaChecker;
import logic.Point;

import javax.management.MBeanServer;
import javax.management.ObjectName;
import java.lang.management.ManagementFactory;

import java.io.Serializable;
import java.util.Random;

@Named("formBean")
@SessionScoped
public class FormBean implements Serializable {
    @Inject
    private HttpSession session;
    @Inject
    DataBaseFactoryManager dataBaseFactoryManager;

    @Inject
    PointsManagedBean pointsManagedBean;
    @Inject
    DynamicDataBaseBean dynamicDataBaseBean;
    @Inject
    AreaChecker areaChecker;
    @Inject
    private AreaBean areaBean;

    private MBeanServer mbs;
    private ObjectName statsName;
    private ObjectName areaName;

    private String x="1";
    private String y="1";
    private String r="1";
    private String xm3;
    private String xm2;
    private String xm1;
    private String x0;
    private String x1;
    private String x2;
    private String x3;
    private boolean status;
    private int trigger=1;
    private int otherPageTrigger = 1;

    private final Random random = new Random();

    @Transactional
    public String submit(){
        randTrigger();
        status = areaChecker.checkArea(Float.parseFloat(x), Float.parseFloat(y), Float.parseFloat(r));
        try {
            // invoke record(boolean)
            mbs.invoke(statsName, "record", new Object[]{status}, new String[]{"boolean"});
            mbs.invoke(statsName, "checkBounds", new Object[]{Float.parseFloat(x), Float.parseFloat(y)},
                new String[]{"float","float"}); 
            mbs.invoke(areaName, "getResultingArea", new Object[]{}, new String[]{});

        } catch (Exception e) {
            // ignore JMX errors
        }
        Point point = new Point(Float.parseFloat(x), Float.parseFloat(y), Float.parseFloat(r), status);
        point.setId(dynamicDataBaseBean.getId());
        point.setSession(session.getId());
        dataBaseFactoryManager.getDataBaseService().createPoint(point);
        updateOtherPageTrigger();
        pointsManagedBean.setPoints(dataBaseFactoryManager.getDataBaseService().getPoints());
        return null;
    }

    @PostConstruct
    public void init(){
        // initialize JMX access to PointStatistics MBean
        try {
            mbs = ManagementFactory.getPlatformMBeanServer();
            statsName = new ObjectName("opi4.lab3:type=PointsStatistics");
            areaName = new ObjectName("opi4.lab3:type=AreaCalculator");
        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize JMX MBean proxy", e);
        }
        pointsManagedBean.setPoints(dataBaseFactoryManager.getDataBaseService().getPoints());
    }


    public int getOtherPageTrigger(){
        return otherPageTrigger;
    }
    public void setOtherPageTrigger(int trigger){
        this.otherPageTrigger = trigger;
    }
    private void updateOtherPageTrigger(){
        this.otherPageTrigger = random.nextInt(10000000);
    }
    public int getTrigger(){return trigger;}
    public void setTrigger(int trigger){this.trigger=trigger;}
    public boolean getStatus(){return status;}
    public void setStatus(boolean status){this.status=status;}
    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }

    public String getR() {
        return r;
    }

    public void setR(String r) {
        this.r = r;
        // propagate new radius to AreaBean for area MBean
        try {
            areaBean.setR(Float.parseFloat(r));
        } catch (NumberFormatException e) {
            // ignore invalid input
        }
    }

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }
    public void handleEvent(){}
    private void randTrigger(){
        setTrigger(random.nextInt(10000000));
    }

    public String getXm3() {
        return xm3;
    }

    public void setXm3(String xm3) {
        this.xm3 = xm3;
    }

    public String getXm2() {
        return xm2;
    }

    public void setXm2(String xm2) {
        this.xm2 = xm2;
    }

    public String getXm1() {
        return xm1;
    }

    public void setXm1(String xm1) {
        this.xm1 = xm1;
    }

    public String getX0() {
        return x0;
    }

    public void setX0(String x0) {
        this.x0 = x0;
    }

    public String getX1() {
        return x1;
    }

    public void setX1(String x1) {
        this.x1 = x1;
    }

    public String getX2() {
        return x2;
    }

    public void setX2(String x2) {
        this.x2 = x2;
    }

    public String getX3() {
        return x3;
    }

    public void setX3(String x3) {
        this.x3 = x3;
    }
}
