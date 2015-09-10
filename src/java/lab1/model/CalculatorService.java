package lab1.model;

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
