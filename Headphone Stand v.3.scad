//Headphone Stand
//By Matthew Croft
//v.2 January 14,2019


//parameters-------------------------------------------------
cm=10;

//render-----------------------------------------------------
stand();

//modules----------------------------------------------------
module stand() {
//bottom
difference(){
translate([0,0,cm*0.2]) cube([cm*12,cm*20,cm*0.4], center=true);
//smoothing base
translate([0,cm*12.8,-cm*2.5]) rotate([-45,0,0]) cube([cm*14,cm*10,cm*0.4], center=true); 
translate([0,cm*-12.8,-cm*2.5]) rotate([45,0,0]) cube([cm*14,cm*10,cm*0.4], center=true); 
translate([cm*7.3,0,-cm]) rotate([0,45,0]) cube([cm*5,cm*21,cm*0.4], center=true); 
translate([cm*-7.3,0,-cm]) rotate([0,-45,0]) cube([cm*5,cm*21,cm*0.4], center=true); 
}
//holder
translate([0,cm*11/4,0]) {
difference(){
translate([0,0,cm*7.5])cylinder(h=cm*15,d=cm*11,center=true);
translate([0,cm*.5,cm*7.5-cm])cylinder(h=cm*16,d=cm*10,center=true);
translate([0,cm*7.5,cm*7+0.45*cm-cm])cube([cm*14,cm*15,cm*20], center=true);
}
//Screw holes



}
}
