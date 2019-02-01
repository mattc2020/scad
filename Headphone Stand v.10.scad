//Headphone Stand
//By Matthew Croft
//v.5 January 20,2019

//This project is designed to be a wall mount for a pair of headphones

//parameters-------------------------------------------------
cm=10;
screwd=0.2778125; //7 wood screw (mm)
screwhd=0.79375;
//render-----------------------------------------------------
stand();
!wire();

//modules----------------------------------------------------
module stand() {
//bottom
  difference(){
    translate([0,0,cm*0.2]) cube([cm*12,cm*20,cm*0.5], center=true);
//smoothing base
    translate([0,cm*12.8,-cm*2.5]) rotate([-45,0,0]) cube([cm*14,cm*10,cm*0.5], center=true); 
    translate([0,cm*-12.8,-cm*2.5]) rotate([45,0,0]) cube([cm*14,cm*10,cm*0.5], center=true); 
    translate([cm*7.3,0,-cm]) rotate([0,45,0]) cube([cm*5,cm*21,cm*0.5], center=true); 
    translate([cm*-7.3,0,-cm]) rotate([0,-45,0]) cube([cm*5,cm*21,cm*0.5], center=true); 
//Screw Holes
    translate([cm*14/4,-cm*12/2,-1])cylinder(h=cm*4,d=screwd*cm,center=true);
    translate([-cm*7,-cm*12/2,-1])cylinder(h=cm*4,d=screwd*cm,center=true);
    translate([0,cm*12/2,-1])cylinder(h=cm*4,d=screwd*cm,center=true);
//screw head
    translate([cm*14/4,-cm*12/2,0.5+screwhd*cm/2])sphere(d=screwhd*cm);
    translate([0,cm*12/2,0.5+screwhd*cm/2])sphere(d=screwhd*cm);
    translate([-cm*14/4,-cm*12/2,0.5+screwhd*cm/2])sphere(d=screwhd*cm);
}
//holder
  translate([0,cm*11/4,0]) {
    difference(){
        translate([0,0,cm*7.5])cylinder(h=cm*15,d=cm*11,center=true);
        translate([0,cm*.5,cm*7.5-cm])cylinder(h=cm*16,d=cm*10,center=true);
        translate([0,cm*7.5,cm*7+0.45*cm-cm])cube([cm*14,cm*15,cm*20], center=true);
}
}
}
//wire holder
module wire() {
difference(){    
    translate([cm*14/3.11,cm*12/2,cm*0.5*2]) cube([cm*1,cm*1,cm*1], center=true);
    translate([cm*14/3.11,cm*12/2,cm*0.5*1.75]) cube([cm*0.6,cm*1.5,cm*0.9], center=true);
    translate([cm*14/3.5,cm*12/2,cm*0.5*1.89]) cube([cm*0.6,cm*1.5,cm*0.5], center=true);
}
difference(){
    translate([cm*14/3.11,cm*12/2,cm*0.45]) cube([cm+2,cm+2,cm*0.1], center=true); 
}
}
