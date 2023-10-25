difference()
{
    union()
    {
        linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
        {
            scale([30.0, 30.0])
            {
                M22();
            }
        }
        translate([-18.0, 0.0, 0.0])
        {
            translate([0.0, 0.0, 22.5])
            {
                linear_extrude(height = 7.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([10.5, 10.5])
                    {
                        M22();
                    }
                }
            }
        }
        translate([18.0, 0.0, 0.0])
        {
            translate([0.0, 0.0, 18.75])
            {
                linear_extrude(height = 11.25, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([10.5, 10.5])
                    {
                        M22();
                    }
                }
            }
        }
    }
    translate([0.0, 0.0, 7.5])
    {
        linear_extrude(height = 64.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
        {
            scale([25.5, 25.5])
            {
                M22();
            }
        }
    }
    translate([18.3, 0.0, 0.0])
    {
        translate([0.0, 0.0, 25.049999999999997])
        {
            rotate_extrude(angle = 360.0, $fn = 128)
            {
                M393();
            }
        }
    }
    translate([-18.3, 0.0, 0.0])
    {
        translate([0.0, 0.0, 25.049999999999997])
        {
            rotate_extrude(angle = 360.0, $fn = 128)
            {
                M393();
            }
        }
    }
    rotate([90.0, 0.0, 0.0])
    {
        translate([0.0, 15.0, 0.0])
        {
            translate([0.0, 0.0, 15.75])
            {
                translate([-12.15, 0.0, 0.0])
                {
                    linear_extrude(height = 4.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                    {
                        union()
                        {
                            translate([0.0, 0.0])
                            {
                                M383();
                            }
                            translate([8.0, 0.0])
                            {
                                M384();
                            }
                            translate([16.0, 0.0])
                            {
                                M383();
                            }
                        }
                    }
                }
            }
        }
    }
}

module M384()
{
    scale([1.0666666666666667, 1.0])
    {
        text
        (
            text = "͜",
            size = 10.0,
            font = "Consolas:style=Regular",
            halign = "left",
            valign = "baseline",
            spacing = 1.0,
            direction = "ltr",
            language = "en",
            script = "latin",
            $fn = 64
        );
    }
}

module M22()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}

module M393()
{
    polygon
    (
        points =
        [
            [0.0, 0.0], 
            [4.1, 0.0], 
            [4.1, 1.0], 
            [3.1, 2.0], 
            [3.1, 3.0], 
            [4.1, 4.0], 
            [4.1, 5.0], 
            [0.0, 5.0]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7]
        ]
    );
}

module M383()
{
    scale([1.0666666666666667, 1.0])
    {
        text
        (
            text = ".",
            size = 10.0,
            font = "Consolas:style=Regular",
            halign = "left",
            valign = "baseline",
            spacing = 1.0,
            direction = "ltr",
            language = "en",
            script = "latin",
            $fn = 64
        );
    }
}
