package beans;

import jakarta.annotation.PostConstruct;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;
import javax.management.MBeanServer;
import javax.management.ObjectName;
import java.lang.management.ManagementFactory;
import jmx.PointsStatistics;
import jmx.AreaCalculator;
import jakarta.inject.Inject;

@Singleton
@Startup
public class MBeanRegistrar {
    @Inject
    private PointsStatistics pointsStatistics;

    @Inject
    private AreaCalculator areaCalculator;

    @PostConstruct
    public void init() {
        try {
            MBeanServer server = ManagementFactory.getPlatformMBeanServer();
            ObjectName statsName = new ObjectName("opi4.lab3:type=PointsStatistics");
            if (!server.isRegistered(statsName)) {
                server.registerMBean(pointsStatistics, statsName);
            }
            ObjectName areaName = new ObjectName("opi4.lab3:type=AreaCalculator");
            if (!server.isRegistered(areaName)) {
                server.registerMBean(areaCalculator, areaName);
            }
        } catch (Exception e) {
            throw new RuntimeException("Failed to register MBeans", e);
        }
    }
}
