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
                    linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                    {
                        scale([30.0, 30.0])
                        {
                            M22();
                        }
                    }
                    translate([14.0, 0.0, 0.0])
                    {
                        translate([0.0, 0.0, 25.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([5.0, 5.0])
                                {
                                    M22();
                                }
                            }
                        }
                    }
                }
                translate([-14.0, 0.0, 0.0])
                {
                    translate([0.0, 0.0, 25.0])
                    {
                        linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([5.0, 5.0])
                            {
                                M22();
                            }
                        }
                    }
                }
            }
            translate([14.399999999999999, 0.0, 0.0])
            {
                translate([0.0, 0.0, 27.5])
                {
                    intersection()
                    {
                        rotate_extrude(angle = 360.0, $fn = 128)
                        {
                            M276();
                        }
                        translate([0.0, 0.0, -0.2])
                        {
                            linear_extrude(height = 5.4, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([2.5, 5.0])
                                {
                                    M22();
                                }
                            }
                        }
                    }
                }
            }
        }
        translate([-14.399999999999999, 0.0, 0.0])
        {
            translate([0.0, 0.0, 27.5])
            {
                intersection()
                {
                    rotate_extrude(angle = 360.0, $fn = 128)
                    {
                        M276();
                    }
                    translate([0.0, 0.0, -0.2])
                    {
                        linear_extrude(height = 5.4, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([2.5, 5.0])
                            {
                                M22();
                            }
                        }
                    }
                }
            }
        }
    }
    translate([-12.5, 0.0, 0.0])
    {
        linear_extrude(height = 1.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
        {
            union()
            {
                translate([0.0, 0.0])
                {
                    M225();
                }
                translate([5.0, 0.0])
                {
                    M237();
                }
                translate([10.0, 0.0])
                {
                    M229();
                }
                translate([15.0, 0.0])
                {
                    M237();
                }
                translate([20.0, 0.0])
                {
                    M233();
                }
            }
        }
    }
    translate([0.0, 0.0, 10.0])
    {
        linear_extrude(height = 64.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
        {
            scale([24.0, 24.0])
            {
                M22();
            }
        }
    }
}

module M225()
{
    scale([0.6666666666666666, 0.6666666666666666])
    {
        text
        (
            text = "(",
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

module M276()
{
    polygon
    (
        points =
        [
            [0.0, -0.2], 
            [2.1, -0.2], 
            [2.1, 0.9], 
            [1.6, 1.4], 
            [1.6, 1.1], 
            [2.1, 1.6], 
            [2.1, 2.7], 
            [0.0, 2.7]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7]
        ]
    );
}

module M229()
{
    scale([0.6666666666666666, 0.6666666666666666])
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

module M233()
{
    scale([0.6666666666666666, 0.6666666666666666])
    {
        text
        (
            text = ")",
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

module M237()
{
    scale([0.6666666666666666, 0.6666666666666666])
    {
        text
        (
            text = "^",
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
