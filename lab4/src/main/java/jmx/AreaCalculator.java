package jmx;

import beans.AreaBean;
import jakarta.inject.Named;
import jakarta.inject.Inject;

public class AreaCalculator implements AreaCalculatorMBean {
    @Inject
    private AreaBean areaBean;

    @Override
    public double getResultingArea() {
        System.out.println("[AreaCalculator] getResultingArea called, r=" + areaBean.getR() +
            ", squareX=" + areaBean.getSquareX() + 
            ", squareY=" + areaBean.getSquareY() + 
            ", triangleX=" + areaBean.getTriangleX() + 
            ", triangleY=" + areaBean.getTriangleY() + 
            ", circleRadius=" + areaBean.getCircleRadius());
        double r = areaBean.getR();
        double squareArea   = areaBean.getSquareX() * areaBean.getSquareY() * Math.pow(areaBean.getR(), 2) / 4;
        double triangleArea = areaBean.getTriangleX() * areaBean.getTriangleY() * Math.pow(areaBean.getR(), 2) / 8;
        double circleArea   = Math.PI * Math.pow(areaBean.getCircleRadius(), 2) * Math.pow(areaBean.getR(), 2) / 16;
        return squareArea + triangleArea + circleArea;
    }
}