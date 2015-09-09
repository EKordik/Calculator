package lab3.model;

/**
 *
 * @author emmakordik
 */
public class CircleStrategy implements circleAreable {
    private double radius;
    private double area;
    
    @Override
    public final double getArea(String radius) throws NumberFormatException{
        try{
            this.radius = Double.parseDouble(radius);
        }catch (NumberFormatException nfe){
            throw new NumberFormatException();
        }
        
        area = (this.radius * this.radius) * Math.PI;
        
        return area;
    }
}
