difference()
{
    difference()
    {
        difference()
        {
            union()
            {
                union()
                {
                    linear_extrude(height = 22.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                    {
                        scale([22.5, 22.5])
                        {
                            M22();
                        }
                    }
                    translate([10.5, 0.0, 0.0])
                    {
                        translate([0.0, 0.0, 18.75])
                        {
                            linear_extrude(height = 3.75, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([3.75, 3.75])
                                {
                                    M22();
                                }
                            }
                        }
                    }
                }
                translate([-10.5, 0.0, 0.0])
                {
                    translate([0.0, 0.0, 18.75])
                    {
                        linear_extrude(height = 3.75, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([3.75, 3.75])
                            {
                                M22();
                            }
                        }
                    }
                }
            }
            translate([10.799999999999999, 0.0, 0.0])
            {
                translate([0.0, 0.0, 20.625])
                {
                    intersection()
                    {
                        rotate_extrude(angle = 360.0, $fn = 128)
                        {
                            M380();
                        }
                        translate([0.0, 0.0, -0.2])
                        {
                            linear_extrude(height = 4.15, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([1.875, 3.75])
                                {
                                    M22();
                                }
                            }
                        }
                    }
                }
            }
        }
        translate([-10.799999999999999, 0.0, 0.0])
        {
            translate([0.0, 0.0, 20.625])
            {
                intersection()
                {
                    rotate_extrude(angle = 360.0, $fn = 128)
                    {
                        M380();
                    }
                    translate([0.0, 0.0, -0.2])
                    {
                        linear_extrude(height = 4.15, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([1.875, 3.75])
                            {
                                M22();
                            }
                        }
                    }
                }
            }
        }
    }
    rotate([90.0, 0.0, 0.0])
    {
        translate([0.0, 11.25, 0.0])
        {
            translate([0.0, 0.0, 11.25])
            {
                translate([-12.15, 0.0, 0.0])
                {
                    linear_extrude(height = 3.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
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
    translate([0.0, 0.0, 7.5])
    {
        linear_extrude(height = 64.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
        {
            scale([18.0, 18.0])
            {
                M22();
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

module M380()
{
    polygon
    (
        points =
        [
            [0.0, -0.2], 
            [1.6, -0.2], 
            [1.6, 0.775], 
            [1.225, 1.15], 
            [1.225, 0.725], 
            [1.6, 1.1], 
            [1.6, 2.075], 
            [0.0, 2.075]
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
