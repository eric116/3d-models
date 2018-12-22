//Triangular Vase is licensed CC0 1.0 Universal by Eric Carlson
radius = 50;
sides = 3;
thickness = 1.5;
bodyHeight = 150;
bodyTwist = 45;
bodyFlare = 1;

//body
translate([0,0,2]){
linear_extrude(height=bodyHeight, twist=bodyTwist, scale=bodyFlare, slices=10)
    polyShape(solid="no");
}

//base
linear_extrude(height=2)
    polyShape(solid="yes");    

module polyShape(solid){
    difference(){
        offset(r=5, $fn=60)
        circle(r=radius,$fn=sides);
        if (solid=="no"){
            offset(r=5-thickness, $fn=48)
            circle(r=radius, $fn=sides);
        }
    }
}