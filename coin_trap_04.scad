//Coin trap: a 3D printed cage to hold a coin
//by Matt
//v. 0.1, 16 Nov 2018
//v. 0.2, 19 Nov 2018
//v. 0.3, 21 Nov 2018

//parameters
//$fa=1;
//$fs=1;
coin_d = 23.88; //diameter of a quarter
coin_th = 1.58; // thickness of a quarter
gap=2;

//the coin
%cylinder(r=coin_d/2, h=coin_th, center = true);

//the trap


difference() {
    minkowski() {
    cube(size=.8*coin_d, center = true);
    sphere(r=.1*coin_d);
    }        
    cylinder(r=coin_d/3, h= coin_d*1.5, center=true);
    rotate([90,0,0]) { 
        cylinder(r=coin_d/3, h= coin_d*1.5, center=true);
    }
    rotate([0,90,0]) { 
        cylinder(r=coin_d/3, h= coin_d*1.5, center=true);
    }
    sphere(d=coin_d+gap);
    translate([coin_d*.85,0,0]) sphere(r=coin_d/2);
    translate([0,coin_d*.85,0]) sphere(r=coin_d/2);
    translate([0,0,coin_d*.85]) sphere(r=coin_d/2);
    translate([0,0,-coin_d*.85]) sphere(r=coin_d/2);
    translate([0,-coin_d*.85,0]) sphere(r=coin_d/2);
    translate([-coin_d*.85,0,0]) sphere(r=coin_d/2);

}
