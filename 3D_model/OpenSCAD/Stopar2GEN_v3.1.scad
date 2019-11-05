/*
    Sachisti - Stopar 2.GEN
    ©TechniX_SK & Sachisti 2019
*/

include <microservo_SG90.scad>;

everything();

module everything() {
    //front
    difference() {
        front();
        senzors();
        endstopHoles();
        sharpHolder();
    }
    
    //rear
    difference() {
        rear();
        switch();
        rearWheel();
        batteryHolder();
    }
    
   //SERVO
    translate([47.5,60,0])
      rotate([0,90,90])        
          SG90();
  
    mirror([1,0,0])
        translate([47.5,60,0])
            rotate([0,90,90])        
                SG90(); 
    //temp
    //arduino();
    //end.temp
}


//TEMP-arduino-board
/*module arduino() {
    translate([-20, 80, 12])
        color([0.5, 0, 0.5], 1)
            cube([40, 40, 5]);
}*/

//FRONT

module front() {
    translate([-46.75, 0, 0]) {
        cube([93.5, 30, 10]);
    }
    difference() {
        f_holder_all();
        f_holder_hole();
    }
}
    
module f_holder_all() {
    f_holder1();
    f_holder2();
    f_holder3();
    f_holder4();
    f_holder5();
}

module f_holder_hole() {
    translate([-46.5, 35, 5]) {
        rotate([0, 90, 0]) {
            cylinder(h=93.5, d=6, $fn=100);
        }
    }
}

module f_holder1() {
    x=-46.5+1.75;
    translate([x, 30, 5]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 30, 0]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 35, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=10, d=10, $fn=100); 
        }
    }
}

module f_holder2() {
    x=-26.5+1.75;
    translate([x, 30, 5]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 30, 0]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 35, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=10, d=10, $fn=100); 
        }
    }
}

module f_holder3() {
    x=-6.5+1.75;
    translate([x, 30, 5]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 30, 0]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 35, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=10, d=10, $fn=100); 
        }
    }
}

module f_holder4() {
    x=13.5+1.75;
    translate([x, 30, 5]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 30, 0]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 35, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=10, d=10, $fn=100); 
        }
    }
}

module f_holder5() {
    x=33.5+1.75;
    translate([x, 30, 5]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 30, 0]) {
        cube([10, 5, 5]);
    }
    
    translate([x, 35, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=10, d=10, $fn=100); 
        }
    }
}

module senzors() {
    hrubka=3.5;
    translate([5.35+5, 12.5, -1])
        cube([22, 7.62+1, 7]);
    
    translate([-36.75+5.35, 12.5, -1])
        cube([22, 7.62+1, 7]);
    
    //LEFT
    translate([5, 12.5, 5])
        cube([31.75+1, 7.62+1, 6]);
    translate([31.75+1+5-hrubka+1, 17, -1])
        cylinder(h=12, d=hrubka, $fn=100);
    translate([5+hrubka-1, 17, -1])
        cylinder(h=12, d=hrubka, $fn=100);
    
    //RIGHT
    translate([-36.75, 12.5, 5])
        cube([31.75+1, 7.62+1, 6]);
    translate([-5-hrubka+1, 17, -1])
        cylinder(h=12, d=hrubka, $fn=100);
    translate([-36.75+hrubka-1, 17, -1])
        cylinder(h=12, d=hrubka, $fn=100);
}   

module switch() {
    translate([-6.5, 136.5, -0.1]) {
         cube([14,9,10.2]);
    }
    
    /*translate([104, -38, 23])    
      cube([14,9,10]);*/
}

module endstopHoles() {
    translate([-20, 3, -0.5]) {
        translate([3.5, 0, 0])
            cylinder(h=11, d=3, $fn=100);
        translate([3.5+19, 0, 0])
            cylinder(h=11, d=3, $fn=100);
    }
}

module sharpHolder() {
    translate([18.5, 9, -1])
        cylinder(h=12, d=3.5, $fn=100);
    translate([-18.5, 9, -1])
        cylinder(h=12, d=3.5, $fn=100);
}


//REAR

module rear() {
    difference() {
        rear_body();
        r_polygon1();
        r_polygon2();
        cable_holes();
        arduinoHoles();
        servoHoles();
        GHole();
    }
    difference() {
        r_holder_all();
        r_holder_hole();
    }
}

module r_polygon1() {
    translate([46.75, 110, -1]) {
        rotate([0, 0, 30]) {
            cube([30, 60, 12]);
        }
    }
}
module r_polygon2() {
    mirror([1,0,0])
      r_polygon1();
}

module cable_holes() {
    translate([0, 60, -0.1])
        cylinder(h=10.2, d=10, $fn=100);
}

module rearWheel() {
    translate([0, 150.125, -0.1])
        cylinder(h=5.1, d=4.75, $fn=100);
    translate([0, 150, 4.9])
        cylinder(h=5.2, d=5.25, $fn=100);
}

module arduinoHoles() {
    translate([20-2.75, 90+2.75, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    mirror([180, 0, 0])
        translate([20-2.75, 90+2.75, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    translate([20-2.75, 130-2.75, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    mirror([180, 0, 0])
        translate([20-2.75, 130-2.75, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
}

module servoHoles() {
    translate([40-6.5-3.5-6.1+7.5, 60-2.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([40-6.5-3.5-6.1+7.5, 60+2.5+22.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    
    //L
    translate([-40+6.5+3.5+6.1-7.5, 60-2.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([-40+6.5+3.5+6.1-7.5, 60+2.5+22.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
}

module batteryHolder() {
    translate([-16.5, 63, -0.1])
        cube([33, 60, 5]);
    
    translate([9, 70+30, -1])
        cylinder(h=12, d=3.5, $fn=100);
    translate([-9, 70+30, -1])
        cylinder(h=12, d=3.5, $fn=100);
    
    //kable
    translate([8, 70, -1])
        cylinder(h=12, d=3.5, $fn=100);
    translate([-8, 70, -1])
        cylinder(h=12, d=3.5, $fn=100);

}

module GHole() {
    
}

module rear_body() {
    translate([-46.5, 50, 0]) {
        cube([93.5, 110, 10]);
    }
}

module r_holder_all() {
    r_holder1();
    r_holder2();
    r_holder3();
    r_holder4();
}

module r_holder_hole() {
    translate([-46.5, 45, 5]) {
        rotate([0, 90, 0]) {
            cylinder(h=93.5, d=6, $fn=100);
        }
    }
}

module r_holder1() {
    x=-35.5+1.75;
    y=45;
    translate([x, y, 5]) {
        cube([8, 5, 5]);
    }
    
    translate([x, y, 0]) {
        cube([8, 5, 5]);
    }
    
    translate([x, 45, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=8, d=10, $fn=100); 
        }
    }
}

module r_holder2() {
    x=-15.5+1.75;
    y=45;
    translate([x, y, 5]) {
        cube([8, 5, 5]);
    }
    
    translate([x, y, 0]) {
        cube([8, 5, 5]);
    }
    
    translate([x, 45, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=8, d=10, $fn=100); 
        }
    }
}

module r_holder3() {
    x=4.5+1.75;
    y=45;
    translate([x, y, 5]) {
        cube([8, 5, 5]);
    }
    
    translate([x, y, 0]) {
        cube([8, 5, 5]);
    }
    
    translate([x, 45, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=8, d=10, $fn=100); 
        }
    }
}

module r_holder4() {
    x=24.5+1.75;
    y=45;
    translate([x, y, 5]) {
        cube([8, 5, 5]);
    }
    
    translate([x, y, 0]) {
        cube([8, 5, 5]);
    }
    
    translate([x, 45, 5]) {
        rotate([0, 90, 0]){
            cylinder(h=8, d=10, $fn=100); 
        }
    }
}