package org.abstractica.clickconnect.impl;

import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.JavaCSGFactory;

public class EvilCubeHat {
    private final JavaCSG csg;
    private final double unit;

    public EvilCubeHat(JavaCSG csg, double unit) {
        this.csg = csg;
        this.unit = unit;
    }

public Geometry3D getEvilCubeHat() {
//        Geometry3D evilCubeHat = csg.flatRing3D(unit, 64, 0.1*unit, 64, false);
        Geometry3D evilCubeHat = csg.cone3D(3.2*unit, 1, 0.3*unit, 64, false);
        Geometry3D evilHatTop = csg.cone3D(1.5*unit, 0.1*unit, 2*unit, 64, false);
        Geometry3D evilHatBrim = csg.flatRing3D(0, 1.6*unit, 0.2*unit, 64, false);
        evilHatBrim = csg.translate3DZ(0.1*unit).transform(evilHatBrim);
        evilHatTop = csg.translate3DZ(0.2*unit).transform(evilHatTop);
        evilCubeHat = csg.union3D(evilCubeHat,evilHatBrim, evilHatTop);

        RoundClicker roundClicker = new RoundClicker(csg, 0.25*unit);
        Geometry3D clickerHole = roundClicker.getRoundHoleCutout(3);
        clickerHole = csg.translate3DZ(-0.1*unit).transform(clickerHole);
        clickerHole = csg.translate3DX(0.72*unit).transform(clickerHole);
//        clickerHole = csg.translate3DZ(0.75*unit).transform(clickerHole);
//        clickerHole = csg.translate3DX(-0.01*unit).transform(clickerHole); // til hvis hatten kunne printes så den ku klikkes i
//        clickerHole = csg.rotate3DY(csg.degrees(90)).transform(clickerHole);
        evilCubeHat = csg.difference3D(evilCubeHat, clickerHole);

    RoundClicker roundClicker2 = new RoundClicker(csg, 0.25*unit);
    Geometry3D clickerHole2 = roundClicker2.getRoundHoleCutout(3);
    clickerHole2 = csg.translate3DZ(-0.1*unit).transform(clickerHole2);
    clickerHole2 = csg.translate3DX(-0.72*unit).transform(clickerHole2);
    evilCubeHat = csg.difference3D(evilCubeHat, clickerHole2);

        return evilCubeHat;

    }


    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        EvilCubeHat evilCubeHat = new EvilCubeHat(csg, 20);
        Geometry3D res = evilCubeHat.getEvilCubeHat();
        csg.view(res);

    }
}
