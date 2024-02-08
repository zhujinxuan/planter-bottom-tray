include <BOSL2/std.scad>;

h = 25;
d = 85;
w = 2;
chamfer = 3;
bottomH = 2;

module planterBottom() {
    diff() cyl(h = bottomH, r = d/2 + w) {
         attach(TOP) cyl(h = h - bottomH, r = d/2 + w, anchor = BOTTOM);
        tag("remove") attach(TOP) cyl(h = h + bottomH, r = d/2, anchor = BOTTOM, chamfer1 = 3);
    }
}

planterBottom();

// tag("remove") cyl(h = h, r = d/2, anchor = BOTTOM, chamfer1 = 3);
