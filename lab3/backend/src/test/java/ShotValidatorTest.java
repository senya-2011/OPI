package com.example.AreaChecker.util;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ShotValidatorTest {

    @Test
    void testInsideRectangle() {
        double r = 4.0;
        // Rectangle: x in [-r,0], y in [0, r/2]
        assertTrue(ShotValidator.isHit(-2.0, 1.0, r));           // center of rectangle
        assertTrue(ShotValidator.isHit(-4.0, 0.0, r));           // lower-left corner
        assertTrue(ShotValidator.isHit(0.0, 2.0, r));            // upper-right corner of rectangle
        assertFalse(ShotValidator.isHit(-4.1, 1.0, r));          // outside x
        assertFalse(ShotValidator.isHit(-2.0, 2.1, r));          // outside y
    }

    @Test
    void testInsideTriangle() {
        double r = 6.0;
        // Triangle: x >= 0, y <= 0, y >= x/2 - r/2
        assertTrue(ShotValidator.isHit(1.0, -1.0, r));           // inside triangle
        assertTrue(ShotValidator.isHit(0.0, -3.0, r));           // lower-left corner on boundary
        assertTrue(ShotValidator.isHit(6.0, 0.0, r));            // right corner on boundary
        assertFalse(ShotValidator.isHit(1.0, -4.0, r));          // below hypotenuse
    }

    @Test
    void testInsideCircle() {
        double r = 5.0;
        // Circle: x >= 0, y >= 0, x^2 + y^2 <= r^2
        assertTrue(ShotValidator.isHit(3.0, 4.0, r));            // on circle
        assertTrue(ShotValidator.isHit(0.0, 0.0, r));            // center
        assertTrue(ShotValidator.isHit(5.0, 0.0, r));            // boundary on x-axis
        assertFalse(ShotValidator.isHit(4.0, 4.0, r));           // outside circle
    }

    @Test
    void testBoundaryConditions() {
        double r = 2.0;
        // Check each shape boundary
        assertTrue(ShotValidator.isHit(-2.0, 1.0, r));           // rectangle boundary
        assertTrue(ShotValidator.isHit(2.0, 0.0, r));            // triangle boundary
        assertTrue(ShotValidator.isHit(0.0, 2.0, r));            // circle boundary
    }

    @Test
    void testOutsideAllAndNaN() {
        double r = 3.0;
        // Outside all regions
        assertFalse(ShotValidator.isHit(10.0, 10.0, r));
        assertFalse(ShotValidator.isHit(-10.0, -10.0, r));
        // NaN inputs
        assertFalse(ShotValidator.isHit(Double.NaN, 0.0, r));
        assertFalse(ShotValidator.isHit(0.0, Double.NaN, r));
    }
}