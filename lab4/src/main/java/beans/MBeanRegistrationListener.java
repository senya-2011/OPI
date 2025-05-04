package beans;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import javax.management.MBeanServer;
import javax.management.ObjectName;
import java.lang.management.ManagementFactory;
import jmx.PointsStatistics;
import jmx.AreaCalculator;

@WebListener
public class MBeanRegistrationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            MBeanServer server = ManagementFactory.getPlatformMBeanServer();
            ObjectName statsName = new ObjectName("opi4.lab3:type=PointsStatistics");
            if (!server.isRegistered(statsName)) {
                server.registerMBean(new PointsStatistics(), statsName);
            }
            // AreaCalculator registration disabled to use CDI-managed bean via MBeanRegistrar
            //ObjectName areaName = new ObjectName("opi4.lab3:type=AreaCalculator");
            //if (!server.isRegistered(areaName)) {
            //    server.registerMBean(new AreaCalculator(), areaName);
            //}
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // nothing to do
    }
}