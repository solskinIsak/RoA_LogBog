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
        Geometry3D evilCubeHat = csg.cone3D(3.2 * unit, 1, 0.3 * unit, 64, false);
        Geometry3D evilHatTop = csg.cone3D(1.5 * unit, 0.1 * unit, 2 * unit, 64, false);
        Geometry3D evilHatBrim = csg.flatRing3D(0, 1.6 * unit, 0.2 * unit, 64, false);
        evilHatBrim = csg.translate3DZ(0.07 * unit).transform(evilHatBrim);
        evilHatTop = csg.translate3DZ(0.2 * unit).transform(evilHatTop);
        evilCubeHat = csg.union3D(evilCubeHat, evilHatBrim, evilHatTop);

        RoundClicker roundClicker = new RoundClicker();
        Geometry3D clickerHole = roundClicker.getHole(csg,3);
        clickerHole = csg.translate3DZ(-0.1 * unit).transform(clickerHole);
        clickerHole = csg.translate3DX(0.72 * unit).transform(clickerHole);

        RoundClicker roundClicker2 = new RoundClicker();
        Geometry3D clickerHole2 = roundClicker2.getHole(csg,3);
        clickerHole2 = csg.translate3DZ(-0.1 * unit).transform(clickerHole2);
        clickerHole2 = csg.translate3DX(-0.72 * unit).transform(clickerHole2);
        evilCubeHat = csg.difference3D(evilCubeHat, clickerHole2, clickerHole);

        return evilCubeHat;

    }


    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        EvilCubeHat evilCubeHat = new EvilCubeHat(csg, 15);
        Geometry3D res = evilCubeHat.getEvilCubeHat();
        csg.view(res);

    }
}
