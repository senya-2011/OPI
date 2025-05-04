package jmx;

public interface PointsStatisticsMBean {
    int getTotalPoints();
    int getPointsInArea();
    
    // expose operations to record points and check bounds
    void record(boolean inArea);
    void checkBounds(float x, float y);
}