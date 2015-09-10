package lab2.model;

import lab1.model.HeightWidthAreable;
import lab1.model.RectangleStrategy;

/**
 *
 * @author emmakordik
 */
public class CalculatorService {
    private HeightWidthAreable recCal = new RectangleStrategy();
    
    public final double getRectangleArea(final String width, final String height){
        return recCal.getArea(width, height);
    }   
}
