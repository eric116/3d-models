use <fillets3d.scad>;

$fn = 50;
    //topBottomFillet(0, 11, 5, 36, 1)
module halfblock(){
    difference() {
        cube([44, 45, 11], center=false);
        translate([21, 10, 0]){
            cylinder(r1=15.5, r2=15.5, h=11, center=false);
        }
        translate([-10, 45, 0]){
            cylinder(r1=20, r2=20, h=11, center=false);
        }
        translate([55, 45, 0]){
        cylinder(r1=20, r2=20, h=11,  center=false);
            }
        }
  } 
  halfblock();
translate([0,90,0]){
    mirror([0,1,0]) halfblock();
}