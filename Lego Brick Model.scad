//lego brick model
//Matthew Croft

//parameters----------------------------
unit= 1.6;

//renders---------------------------------------
block(w=2,l=4);
//moduels---------------------------------------

//brick
module block (w=2,l=4) {
   difference(){
cube(size=[unit*10, unit*20, unit*6]);
translate([1,1,-1]) cube(size=[unit*10-2, unit*20-2, unit*6-2]);
}
translate([unit*2.5,unit*2.5,unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*7.5,unit*2.5,unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*7.5,unit*7.5,unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*7.5,unit*12.5,unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*7.5,unit*17.5,unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*2.5,unit*7.5, unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*2.5,unit*12.5, unit*6]) cylinder(d=unit*3, h=unit*1);
translate([unit*2.5,unit*17.5, unit*6]) cylinder(d=unit*3, h=unit*1);
}

