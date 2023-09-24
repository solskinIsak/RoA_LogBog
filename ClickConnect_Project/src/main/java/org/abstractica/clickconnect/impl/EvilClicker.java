package org.abstractica.clickconnect.impl;
import org.abstractica.javacsg.*;

public class EvilClicker {
    private final JavaCSG csg;
    private final double unit;

    public EvilClicker(JavaCSG csg, double unit) {
        this.csg = csg;
        this.unit = unit;
    }

    public Geometry3D getEvilClicker(){
        RoundClicker roundClicker = new RoundClicker(csg, 0.25*unit);
        Geometry3D clicker = roundClicker.getClicker(3.5, true);
        clicker = csg.translate3DZ(1.375*unit).transform(clicker);
        clicker = csg.translate3DX(0.72*unit).transform(clicker);
        return clicker;
    }


    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        EvilClicker evilClicker = new EvilClicker(csg, 15);
        Geometry3D res = evilClicker.getEvilClicker();
        csg.view(res);
    }

}
