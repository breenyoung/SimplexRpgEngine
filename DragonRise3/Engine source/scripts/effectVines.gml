/// effectVines(x, y, number)
var xx,yy,number;
xx     = x;
yy     = y;
number = 5;

if (argument_count > 0) {xx     = argument[0];}
if (argument_count > 1) {yy     = argument[1];}
if (argument_count > 2) {number = argument[2];}


particle1 = part_type_create();
part_type_sprite(particle1,sVineParticle,0,0,0);
part_type_size(particle1,0.1,0.3,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,32768,65280,8454016);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,0.,0.,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,40,60);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,xx,xx,yy,yy,0,0);
part_emitter_burst(Sname,emitter1,particle1,1);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_disk);
part_type_size(particle2,0.0,0.0,0,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,32768,65280,8454016);
part_type_alpha2(particle2,1,0);
part_type_speed(particle2,0.2,0.5,-0.02,0);
part_type_direction(particle2,0,359,0,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,60,90);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,xx,xx,yy,yy,0,0);
part_emitter_burst(Sname,emitter1,particle2,1);


