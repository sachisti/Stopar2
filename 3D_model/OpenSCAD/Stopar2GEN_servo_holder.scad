/*
    Sachisti - Stopar 2.GEN - SG90 servo holder
    ©TechniX_SK & Sachisti 2019
*/

difference() {
    holder();
    holes();
}

module holder() {
    translate([0, 0, 0])
        cube([3.5, 5, 12]);
    translate([-10, 0, 8.5])
        cube([12, 5, 3.5]);
}

module holes() { 
    rotate([0, 90, 0])
        translate([-6.1, 2.5, -0.1])
            cylinder(h=3.7, d=3.5, $fn=100);
    translate([-6.1, 2.5, 8.4])
            cylinder(h=3.7, d=3.5, $fn=100);
}