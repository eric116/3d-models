$fn = 50;
//Diameter of legs
$inner_diameter = 40;
//Outer Diameter
$outer_diameter = 45;
//Ring Height
$h = 10;
difference(){
    cylinder($h, d=$outer_diameter, true);
    cylinder($h, d=$inner_diameter, true);
    translate([-5,15,0]){
        cube([10,10,10]);
    }
}
