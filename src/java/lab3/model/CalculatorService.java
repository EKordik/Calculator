package lab3.model;


/**
 *
 * @author emmakordik
 */
public class CalculatorService {
    private HeightWidthAreable recCal = new RectangleStrategy();
    private HeightWidthAreable triCal = new TriangleStrategy();
    private CircleAreable circleCal = new CircleStrategy();
    
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
