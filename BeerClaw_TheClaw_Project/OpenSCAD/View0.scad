difference()
{
    union()
    {
        linear_extrude(height = 45.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
        {
            scale([70.0, 80.0])
            {
                M22();
            }
        }
        translate([35.0, 0.0, 0.0])
        {
            linear_extrude(height = 10.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
            {
                difference()
                {
                    scale([80.0, 80.0])
                    {
                        M205();
                    }
                    scale([0.0, 0.0])
                    {
                        M205();
                    }
                }
            }
        }
    }
    translate([30.0, 0.0, 0.0])
    {
        translate([0.0, 0.0, 2.0])
        {
            translate([0.0, 0.0, 43.0])
            {
                mirror([0.0, 0.0, 1.0])
                {
                    linear_extrude(height = 86.0, twist = 0.0, scale = 0.7466666666666667, slices = 1, center = true)
                    {
                        scale([75.0, 75.0])
                        {
                            M205();
                        }
                    }
                }
            }
        }
    }
    translate([0.0, -24.0, 0.0])
    {
        translate([-12.5, 0.0, 0.0])
        {
            translate([0.0, 0.0, 44.0])
            {
                linear_extrude(height = 3.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                {
                    rotate(90.0)
                    {
                        union()
                        {
                            translate([0.0, 0.0])
                            {
                                M493();
                            }
                            translate([16.0, 0.0])
                            {
                                M494();
                            }
                            translate([32.0, 0.0])
                            {
                                M493();
                            }
                        }
                    }
                }
            }
        }
    }
    translate([0.0, -30.0, 0.0])
    {
        translate([-25.0, 0.0, 0.0])
        {
            translate([0.0, 0.0, 40.0])
            {
                rotate_extrude(angle = 360.0, $fn = 128)
                {
                    M491();
                }
            }
        }
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

module M491()
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

module M205()
{
    polygon
    (
        points =
        [
            [0.5, 0.0], 
            [0.49759236333609846, 0.0490085701647803], 
            [0.4903926402016152, 0.09754516100806412], 
            [0.4784701678661044, 0.14514233862723117], 
            [0.46193976625564337, 0.1913417161825449], 
            [0.4409606321741775, 0.23569836841299882], 
            [0.4157348061512726, 0.2777851165098011], 
            [0.3865052266813685, 0.31719664208182274], 
            [0.3535533905932738, 0.35355339059327373], 
            [0.31719664208182274, 0.3865052266813685], 
            [0.27778511650980114, 0.4157348061512726], 
            [0.2356983684129989, 0.44096063217417747], 
            [0.19134171618254492, 0.46193976625564337], 
            [0.14514233862723117, 0.47847016786610447], 
            [0.09754516100806417, 0.4903926402016152], 
            [0.049008570164780385, 0.4975923633360984], 
            [3.061616997868383E-17, 0.5], 
            [-0.04900857016478032, 0.49759236333609846], 
            [-0.0975451610080641, 0.4903926402016152], 
            [-0.14514233862723108, 0.47847016786610447], 
            [-0.19134171618254486, 0.46193976625564337], 
            [-0.23569836841299885, 0.4409606321741775], 
            [-0.277785116509801, 0.41573480615127273], 
            [-0.3171966420818227, 0.38650522668136855], 
            [-0.35355339059327373, 0.3535533905932738], 
            [-0.3865052266813685, 0.31719664208182274], 
            [-0.4157348061512727, 0.2777851165098011], 
            [-0.44096063217417747, 0.23569836841299893], 
            [-0.46193976625564337, 0.19134171618254495], 
            [-0.4784701678661044, 0.1451423386272312], 
            [-0.4903926402016152, 0.0975451610080643], 
            [-0.4975923633360984, 0.04900857016478041], 
            [-0.5, 6.123233995736766E-17], 
            [-0.49759236333609846, -0.049008570164780295], 
            [-0.4903926402016152, -0.09754516100806418], 
            [-0.47847016786610447, -0.14514233862723105], 
            [-0.4619397662556434, -0.19134171618254484], 
            [-0.4409606321741775, -0.23569836841299882], 
            [-0.41573480615127273, -0.277785116509801], 
            [-0.38650522668136855, -0.31719664208182263], 
            [-0.35355339059327384, -0.35355339059327373], 
            [-0.31719664208182297, -0.38650522668136833], 
            [-0.2777851165098011, -0.4157348061512726], 
            [-0.23569836841299893, -0.44096063217417747], 
            [-0.19134171618254517, -0.46193976625564326], 
            [-0.14514233862723122, -0.4784701678661044], 
            [-0.09754516100806433, -0.49039264020161516], 
            [-0.049008570164780225, -0.49759236333609846], 
            [-9.184850993605148E-17, -0.5], 
            [0.049008570164780045, -0.49759236333609846], 
            [0.09754516100806415, -0.4903926402016152], 
            [0.14514233862723103, -0.47847016786610447], 
            [0.191341716182545, -0.4619397662556433], 
            [0.2356983684129988, -0.4409606321741775], 
            [0.2777851165098009, -0.41573480615127273], 
            [0.3171966420818228, -0.38650522668136844], 
            [0.3535533905932737, -0.35355339059327384], 
            [0.38650522668136833, -0.31719664208182297], 
            [0.4157348061512726, -0.2777851165098011], 
            [0.4409606321741774, -0.23569836841299896], 
            [0.46193976625564326, -0.1913417161825452], 
            [0.4784701678661044, -0.14514233862723125], 
            [0.49039264020161516, -0.09754516100806436], 
            [0.49759236333609846, -0.04900857016478025]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63]
        ]
    );
}

module M493()
{
    scale([2.1333333333333333, 2.0])
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

module M494()
{
    scale([2.1333333333333333, 2.0])
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
