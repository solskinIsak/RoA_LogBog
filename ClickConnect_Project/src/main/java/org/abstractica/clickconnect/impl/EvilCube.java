package org.abstractica.clickconnect.impl;

import org.abstractica.clickconnect.RoundClickSystem;
import org.abstractica.javacsg.*;

public class EvilCube implements RoundClickSystem {

    private final JavaCSG csg;
    private final double unit;

    public EvilCube(JavaCSG csg, double unit) {
        this.csg = csg;
        this.unit = unit;
    }

    public Geometry3D getEvilCube() {
        Geometry3D evilCube = csg.box3D(1.5*unit, 1.5*unit, 1.5*unit, false);
        Geometry3D hole = csg.box3D(1.2*unit, 1.2*unit, 64, false);
        hole = csg.translate3DZ(0.5*unit).transform(hole);



        Geometry2D text = csg.text2D(".͜.", 7.0,10,64);
        Geometry3D text3d = csg.linearExtrude(2, true,text);
        Transform3D move = csg.translate3DX(-0.53*unit);
        text3d = move.transform(text3d);
        text3d = csg.translate3DZ(0.75*unit).transform(text3d);
        text3d = csg.translate3DY(0.75*unit).transform(text3d);
        text3d = csg.rotate3DX(csg.degrees(90)).transform(text3d);

        Geometry3D clickCube = csg.box3D(0.25*unit, 0.25*unit, 0.25*unit, false);
        clickCube = csg.translate3DZ(1.25*unit).transform(clickCube);
        clickCube = csg.translate3DX(0.7*unit).transform(clickCube);
        evilCube = csg.union3D(evilCube, clickCube);


        Geometry3D clickCube2 = csg.box3D(0.25*unit, 0.25*unit, 0.25*unit, false);
        clickCube2 = csg.translate3DZ(1.25*unit).transform(clickCube2);
        clickCube2 = csg.translate3DX(-0.7*unit).transform(clickCube2);
        evilCube = csg.union3D(evilCube, clickCube2);

        RoundClicker roundClicker = new RoundClicker(csg, 0.25*unit);
        Geometry3D clicker = roundClicker.getLockedHoleCutout(0.0);
        clicker = csg.translate3DZ(1.375*unit).transform(clicker);
        clicker = csg.translate3DX(0.72*unit).transform(clicker);
        evilCube = csg.difference3D(evilCube, clicker);

        RoundClicker roundClicker2 = new RoundClicker(csg, 0.25*unit);
        Geometry3D clicker2 = roundClicker2.getLockedHoleCutout(0.0);
        clicker2 = csg.translate3DZ(1.375*unit).transform(clicker2);
        clicker2 = csg.translate3DX(-0.72*unit).transform(clicker2);
        evilCube = csg.difference3D(evilCube, clicker2);

        evilCube = csg.difference3D(evilCube,text3d,hole);
        return evilCube;

    }

    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        EvilCube evilCube = new EvilCube(csg, 20);
        Geometry3D res = evilCube.getEvilCube();
        csg.view(res);
    }

    @Override
    public Geometry3D getClicker(double extraLength, boolean tight) {
        return null;
    }

    @Override
    public Geometry3D getRoundHoleCutout(double extraLength) {
        return null;
    }

    @Override
    public Geometry3D getLockedHoleCutout(double extraLength) {
        return null;
    }
}
