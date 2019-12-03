/*
    Sachisti - Stopar 2.GEN
    ©TechniX_SK & Sachisti 2019
*/

include <microservo_SG90.scad>;

servo=1; //servo 1|0
front=1; //front 1|0
rear=1; // rear 1|0
everything();

module everything() {
    //front
    if(front==1) {
        difference() {
        front();
        senzors();
        endstopHoles();
        sharpHolder();
        frontWheelHoles();
        }
    }
    
    //rear
    if(rear==1) {
        difference() {
        rear();
        switch();
        rearWheel();
        batteryHolder();
        cable_holes();
        arduinoHoles();
        servoHoles();
        gyroHolder();
        cableRift();
        }
    }
    
   //SERVO
    if(servo==1) {
        translate([47.5,60,0])
            rotate([0,90,90])        
                SG90();
  
        mirror([1,0,0])
            translate([47.5,60,0])
                rotate([0,90,90])        
                    SG90();
    }
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
    translate([-6.5, 136.5+2.5, -0.1]) {
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
        translate([3.5+19, 0, 6])
            screwHole();
        translate([3.5, 0, 6])
            screwHole();
    }
}

module sharpHolder() {
    translate([18.5, 25, -1])
        cylinder(h=12, d=3.5, $fn=100);
    translate([-18.5, 25, -1])
        cylinder(h=12, d=3.5, $fn=100);
    translate([18.5, 25, 5])
            screwHole();
    translate([-18.5, 25, 5])
            screwHole();
}

module frontWheelHoles() {
    translate([-42, 17.5, -0.1])
        cylinder(h=5.1, d=4.75, $fn=100);
    translate([-42, 17.5, 4.9])
        cylinder(h=5.2, d=5.25, $fn=100);
    translate([42, 17.5, -0.1])
        cylinder(h=5.1, d=4.75, $fn=100);
    translate([42, 17.5, 4.9])
        cylinder(h=5.2, d=5.25, $fn=100);
}

module screwHole() {
    cylinder(h=6, d=4.5, $fn=100);
}

//REAR

module rear() {
    difference() {
        rear_body();
        r_polygon1();
        r_polygon2();
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
    translate([0, 60+5, -0.1])
        cylinder(h=10.2, d=10, $fn=100);
}

module rearWheel() {
    translate([0, 150.125+4, -0.1])
        cylinder(h=5.1, d=4.75, $fn=100);
    translate([0, 150+4, 4.9])
        cylinder(h=5.2, d=5.25, $fn=100);
}

module arduinoHoles() {
    posun=5;
    
    translate([20-2.75, 90+2.75+posun, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    mirror([180, 0, 0])
        translate([20-2.75, 90+2.75+posun, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    translate([20-2.75, 130-2.75+posun, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    mirror([180, 0, 0])
        translate([20-2.75, 130-2.75+posun, -2.5])
            cylinder(h=15, d=3.5, $fn=100);
    
    translate([20-2.75, 90+2.75+posun, -1])
        screwHole();
    mirror([180, 0, 0])
        translate([20-2.75, 90+2.75+posun, -1])
            screwHole();
    
    translate([20-2.75, 130-2.75+posun, -1])
            screwHole();
    mirror([180, 0, 0])
        translate([20-2.75, 130-2.75+posun, -1])
            screwHole();
    
}

module servoHoles() {
    translate([40-6.5-3.5-6.1+7.5, 60-2.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([40-6.5-3.5-6.1+7.5, 60+2.5+22.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([40-6.5-3.5-6.1+7.5, 60-2.5, 5])
        screwHole();
    translate([40-6.5-3.5-6.1+7.5, 60+2.5+22.5, 5])
        screwHole();
    
    //L
    translate([-40+6.5+3.5+6.1-7.5, 60-2.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([-40+6.5+3.5+6.1-7.5, 60+2.5+22.5, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([-40+6.5+3.5+6.1-7.5, 60-2.5, 5])
        screwHole();
    translate([-40+6.5+3.5+6.1-7.5, 60+2.5+22.5, 5])
        screwHole();
}

module batteryHolder() {
    translate([-16.5, 63+5, -0.1])
        cube([33, 60, 7.5]);
    
    translate([9, 70+30-8+5, -1])
        cylinder(h=12, d=3.5, $fn=100);
    translate([-9, 70+30-8+5, -1])
        cylinder(h=12, d=3.5, $fn=100);
    
    //kable
    translate([8, 70-5+5, -1])
        cylinder(h=12, d=3.5, $fn=100);
    /*translate([-8, 70-5+5, -1])
        cylinder(h=12, d=3.5, $fn=100);*/

}

module gyroHolder() {
    translate([20, 75, -0.1])
        cylinder(h=10.2, d=3.5, $fn=100);
    translate([20, 75, -0.1])
        screwHole();
}

module screwHole() {
    cylinder(h=6, d=4.5, $fn=100);
}

module rear_body() {
    translate([-46.5, 50, 0]) {
        cube([93.5, 110, 10]);
    }
}

module cableRift() {
    translate([-22.5-2, 55, -0.1])
        cube([10, 4, 4.1]);
    translate([-22.5-2+15, 55, -0.1])
        cube([34-15-7.5, 4, 4.1]);
    translate([-22.5-2+10-1, 55, 1-0.1])
        cube([6.2, 4, 3.1]);
    translate([-22.5-2+10-1+16.5, 55, 1-0.1])
        cube([6.2, 4, 3.1]);
    
    
    //
    translate([-22.5-2, 55, -0.1])
        cube([4, 30-5, 4.1]);
    translate([-22.5-2, 55+30-0.1-5, 1-0.1])
        cube([4, 5.2, 3.1]);
    translate([-22.5-2, 55+30, -0.1])
        cube([4, 30-5, 4.1]);
    //
    
    translate([-22.5-2, 55+60, -0.1])
        cube([4, 30-5, 4.1]);
    translate([-22.5-2, 85+30-0.1-5, 1-0.1])
        cube([4, 5.2, 3.1]);
    //
    translate([-22.5-2, 142, -0.1])
        cube([8, 4, 4.1]);
    translate([-22.5-2+12.5, 142, -0.1])
        cube([8, 4, 4.1]);
    translate([-22.5-2, 112.5+30-0.1-5, 1-0.1])
        cube([4, 5.2, 3.1]);
     //
     translate([-22.5-2++7.5, 117+30-0.1-5, 1-0.1])
        cube([5.2, 4, 3.1]);
    
    translate([8.25-2, 55, -0.1])
        cube([4, 7.5, 4.1]);
    translate([-8-2, 55.1, -1])
        cube([4, 13.5, 9.1]);
    
    translate([8, 70-9.75, -1])
        cylinder(h=12, d=3.5, $fn=100);
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