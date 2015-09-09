package lab3.model;


/**
 *
 * @author emmakordik
 */
public class CalculatorService {
    HeightWidthAreable recCal = new RectangleStrategy();
    HeightWidthAreable triCal = new TriangleStrategy();
    circleAreable circleCal = new CircleStrategy();
    
    public final double getRectangleArea(final String width, final String height){
        return recCal.getArea(width, height);
    }   
    
    public final double getTriangleArea(final String width, final String height){
        return triCal.getArea(width, height);
    }
    
    public final double getCircleArea(final String radius){
        return circleCal.getArea(radius);
    }
}
