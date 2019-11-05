/*
    Sachisti - Stopar 2.GEN - wheels
    ©Sachisti 2019
*/

difference() {
    wheel();
    hole();
    holes();
    bigHoles();
}

module wheel() {
    cylinder(h=4, d=50, $fn=100);
}

module hole() {
    translate([0, 0, -0.5])
        cylinder(h=5, d=3.5, $fn=100);
}

module holes() {
    translate([7.5, 0, -0.5])
        cylinder(h=5, d=3.5, $fn=100);
    translate([-7.5, 0, -0.5])
        cylinder(h=5, d=3.5, $fn=100);
    translate([0, 7.5, -0.5])
        cylinder(h=5, d=3.5, $fn=100);
    translate([0, -7.5, -0.5])
        cylinder(h=5, d=3.5, $fn=100);
}

module bigHoles() {
    translate([10, 10, -0.5])
        cylinder(h=5, d=10, $fn=100);
    translate([10, -10, -0.5])
        cylinder(h=5, d=10, $fn=100);
    translate([-10, 10, -0.5])
        cylinder(h=5, d=10, $fn=100);
    translate([-10, -10, -0.5])
        cylinder(h=5, d=10, $fn=100);
}