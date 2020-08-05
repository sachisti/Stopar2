/*
    Sachisti - Stopar 2.GEN - SG90 servo holder
    ©TechniX_SK & Sachisti 2020
*/

module everything() {
    left_rod();
    right_rod();
    center();
}

difference() {
    everything();
    left_hole();
    right_hole();
    triangleDif();
    
}

module left_rod() {
    translate([7, 0, 0])
        cylinder(h=25,d=5.5,$fn=100);
    translate([7+38, 0, 0])
        cylinder(h=25,d=5.5,$fn=100);
}

module right_rod() {
    translate([-7, 0, 0])
        cylinder(h=25,d=5.5,$fn=100);
    translate([-7-38, 0, 0])
        cylinder(h=25,d=5.5,$fn=100);
}

module center() {
    translate([7, -2.75, 5])
        cube([38, 5.5, 20]);
    translate([-45, -2.75, 5])
        cube([38, 5.5, 20]);
     
    translate([7+2.74, -12.75, 10])
        cube([35-2.76, 10, 15]);
    translate([-35-2.76-7+2.74, -12.75, 10])
        cube([35-2.76, 10, 15]);
}

module left_hole() {
    translate([7, 0, -1])
        cylinder(h=27,d=3.5,$fn=100);
    translate([7+38, 0, -1])
        cylinder(h=27,d=3.5,$fn=100);
}
    
module right_hole() {
    translate([-7, 0, -1])
        cylinder(h=27,d=3.5,$fn=100);
    translate([-7-38, 0, -1])
        cylinder(h=27,d=3.5,$fn=100);
}

module triangleDif() {
    translate([7+2.75-0.1, -22, 22])
        rotate([-60, 0, 0])
            cube([35.2-2.75, 20, 10]);
    
    translate([-35-7.1, -22, 22])
        rotate([-60, 0, 0])
            cube([35.2-2.75, 20, 10]);
}
