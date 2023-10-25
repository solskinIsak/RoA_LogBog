package org.abstractica.clickconnect.impl;

import org.abstractica.clickconnect.RoundClickSystem;
import org.abstractica.javacsg.*;

public class EvilCube {

    private final JavaCSG csg;
    private final double unit;

    public EvilCube(JavaCSG csg, double unit) {
        this.csg = csg;
        this.unit = unit;
    }
    public Geometry3D getFace() {
        Geometry2D text = csg.text2D(".͜.", 8, 15, 64);
        Geometry3D text3d = csg.linearExtrude(4, true, text);
        Transform3D move = csg.translate3DX(-unit * 0.81);
        text3d = move.transform(text3d);
        text3d = csg.translate3DZ(1.05 * unit).transform(text3d);
        text3d = csg.translate3DY(1 * unit).transform(text3d);
        text3d = csg.rotate3DX(csg.degrees(90)).transform(text3d);

        return text3d;
    }

    public Geometry3D getClickerCube() {
        //clicker hole 1
        Geometry3D clickCube = csg.box3D(0.7 * unit, 0.7 * unit, 0.75 * unit, false);
        clickCube = csg.translate3DZ(1.25 * unit).transform(clickCube);
        clickCube = csg.translate3DX(1.2 * unit).transform(clickCube);

        return clickCube;
    }

    public Geometry3D getClickerCube2(){
        //clicker hole 2
        Geometry3D clickCube2 = csg.box3D(0.7*unit, 0.7*unit, 0.5*unit, false);
        clickCube2 = csg.translate3DZ(1.50*unit).transform(clickCube2);
        clickCube2 = csg.translate3DX(-1.2*unit).transform(clickCube2);

        return clickCube2;
    }
    public Geometry3D getEvilCube() {
        Geometry3D evilCube = csg.box3D(2*unit, 2*unit, 2*unit, false);
        Geometry3D hole = csg.box3D(1.7*unit, 1.7*unit, 64, false);
        hole = csg.translate3DZ(0.5*unit).transform(hole);

        //clicker hole 2
        RoundClicker roundClicker2 = new RoundClicker();
        Geometry3D clicker2 = roundClicker2.getHole(csg,1);
        clicker2 = csg.translate3DZ(1.67*unit).transform(clicker2);
        clicker2 = csg.translate3DX(-1.22*unit).transform(clicker2);

        //clicker hole 1
        RoundClicker roundClicker = new RoundClicker();
        Geometry3D clicker = roundClicker.getHole(csg,1);
        clicker = csg.translate3DZ(1.67*unit).transform(clicker);
        clicker = csg.translate3DX(1.22*unit).transform(clicker);


        evilCube = csg.union3D(evilCube, getClickerCube2(), getClickerCube());
        evilCube = csg.difference3D(evilCube,hole,clicker,clicker2,getFace());


        return evilCube;

    }

    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        EvilCube evilCube = new EvilCube(csg, 15);
        Geometry3D res = evilCube.getEvilCube();
        csg.view(res);
    }
}
