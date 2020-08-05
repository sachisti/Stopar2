/*
    Sachisti - Stopar 2.GEN - SG90 servo holder
    ©TechniX_SK & Sachisti 2019
*/

difference() {
    left_holder();
    holes();
}


module left_holder() {
    translate([0, -2, 0])
        cube([3.5, 7, 12]);
    translate([-10, -2, 8.5])
        cube([12, 7, 3.5]);
}

module holes() { 
    rotate([0, 90, 0])
        translate([-5.1, 2.5, -0.1])
            cylinder(h=3.7, d=2.5, $fn=100);
    translate([-6.1, 2.5, 8.4])
            cylinder(h=3.7, d=3.5, $fn=100);
}