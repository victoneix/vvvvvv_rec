system = part_system_create();
type = part_type_create();

part_type_size(type, 1.2, 2.8, 0, 0);
part_type_color1(type, c_silver)
part_type_alpha2(type, 0.3, 1.4);
part_type_speed(type, 2.8, 4.2, 0, 0);
part_type_direction(type, 180, 180, 0, 0);
part_type_life(type, 320, 640);

emitter = part_emitter_create(system);