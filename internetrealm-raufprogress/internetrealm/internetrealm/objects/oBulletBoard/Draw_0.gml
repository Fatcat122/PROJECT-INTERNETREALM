var border_l = 320 - (current_width/2);
var border_r = 320 + (current_width/2);
var border_u = 384 - current_height;
var border_d = 384;

oSoul.x = clamp(oSoul.x, border_l + 8, border_r - 8);
oSoul.y = clamp(oSoul.x, border_u + 8, border_d - 8);

draw_set_color(c_white);
draw_rectangle(border_l - 4, border_u - 4, border_r + 4, border_d + 4, false);
draw_set_color(c_black);
draw_rectangle(border_l,border_u, border_r, border_d, false);



