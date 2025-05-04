package jmx;

import javax.management.Notification;
import javax.management.NotificationBroadcasterSupport;
import java.util.concurrent.atomic.AtomicInteger;

// remove CDI to use plain MBean instance
public class PointsStatistics extends NotificationBroadcasterSupport implements PointsStatisticsMBean {
    private final AtomicInteger total = new AtomicInteger();
    private final AtomicInteger hits  = new AtomicInteger();
    private long sequence = 1L;

    @Override
    public int getTotalPoints() {
        return total.get();
    }

    @Override
    public int getPointsInArea() {
        return hits.get();
    }

    public void record(boolean inArea) {
        System.out.println("[PointsStatistics] record called, inArea=" + inArea + ", total=" + total.get() + ", hits=" + hits.get());
        total.incrementAndGet();
        if (inArea) hits.incrementAndGet();
    }

    public void checkBounds(float x, float y) {
        System.out.println("[PointsStatistics] checkBounds called for ("+x+","+y+")");
        // display limits: x in [-5,5], y in [-3,3]
        Notification n = new Notification(
            "jmx.PointsStatistics.outOfBounds",
            this,
            sequence++,     
            String.format("Point (%.2f,%.2f) is put", x, y)
        );
        sendNotification(n);

        if (x < -5 || x > 5 || y < -2 || y > 2) {
            n = new Notification(
                "jmx.PointsStatistics.outOfBounds",
                this,
                sequence++,
                String.format("Point (%.2f,%.2f) is outside display area", x, y)
            );
            sendNotification(n);
        }
    }

    @Override
    public javax.management.MBeanNotificationInfo[] getNotificationInfo() {
        String[] types = new String[]{"jmx.PointsStatistics.outOfBounds"};
        String name = javax.management.Notification.class.getName();
        String description = "Notification when a point falls outside the display area";
        javax.management.MBeanNotificationInfo info = new javax.management.MBeanNotificationInfo(types, name, description);
        return new javax.management.MBeanNotificationInfo[]{info};
    }
}