import org.abstractica.javacsg.*;
import org.abstractica.javacsgmodules.nodemcucutout.NodeMCUv2Cutout;

public class Test
{
	public static void main(String[] args)
	{
		JavaCSG csg = JavaCSGFactory.createDefault();

		NodeMCUv2Cutout cutout = new NodeMCUv2Cutout();

		Geometry3D cutoutGeometry = cutout.getCutout(csg);
		cutoutGeometry = csg.translate3DZ(3).transform(cutoutGeometry);

		Geometry2D text = csg.text2D("I&J", 5.0,10,64);
		Geometry3D text3d = csg.linearExtrude(6, false,text);
		Transform3D move = csg.translate3DX(-7.5);
		text3d = move.transform(text3d);

		Geometry3D box = csg.box3D(35, 70, 7, false);

		Geometry3D result = csg.difference3D(box, cutoutGeometry);
		result = csg.difference3D(result,text3d);

		csg.view(result);

	}
}
