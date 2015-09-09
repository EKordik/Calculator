package lab3.model;

/**
 *
 * @author emmakordik
 */
public class TriangleStrategy implements HeightWidthAreable {
    private double width;
    private double height;
    private double area;
    
    public final double getArea(final String width, final String height)
            throws NumberFormatException{
        try{
            this.width = Double.parseDouble(width);
            this.height = Double.parseDouble(height);
        }catch(NumberFormatException nfe){
            throw new NumberFormatException();
        }
        
        area = (this.height*this.width)/2.0;
        
        return area;
    }
}
