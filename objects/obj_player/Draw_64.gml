var _vfont = font_add_sprite(spr_font,ord("!"),0,0);
var _rn = instance_place(x,y,obj_room);
draw_set_font(_vfont);
draw_set_halign(1);
draw_text(160,0, _rn.room_name);
draw_set_halign(0);
draw_set_font(-1);