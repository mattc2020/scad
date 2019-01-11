//Headphone Stand
//By Matthew Croft
//v.1 January 9,2019


//parameters-------------------------------------------------
cm=10;

//render-----------------------------------------------------
stand();

//modules----------------------------------------------------
module stand() {
translate([0,0,cm*0.2]) cube([cm*12,cm*20,cm*0.4], center=true);
difference(){
translate([0,0,cm*7.5])cylinder(h=cm*15,d=cm*11,center=true);
translate([0,cm*.5,cm*7.5])cylinder(h=cm*14,d=cm*10,center=true);
translate([0,cm*7.5,cm*7+0.45*cm])cube([cm*14,cm*15,cm*14], center=true);
}
}
