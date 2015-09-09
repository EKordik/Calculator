package lab3.model;

/**
 *
 * @author emmakordik
 */
public class RectangleStrategy implements HeightWidthAreable {
    private double width;
    private double height;
    
    @Override
    public final double getArea(final String width, final String height)
        throws IllegalArgumentException, NumberFormatException{
        if(width == null || height == null){
            throw new IllegalArgumentException();
        }
        
        try{
            this.width = Double.parseDouble(width);
            this.height = Double.parseDouble(height);
        }catch(NumberFormatException nfe){
            throw new NumberFormatException();
        }
        
        return this.width * this.height;
    }
}
