system = part_system_create();
type = part_type_create();
emitter = part_emitter_create(system);
part_type_size(type,1,2,0,0);
part_type_speed(type,0.5,1,0,0);
part_type_alpha2(type,0.2,0.8);