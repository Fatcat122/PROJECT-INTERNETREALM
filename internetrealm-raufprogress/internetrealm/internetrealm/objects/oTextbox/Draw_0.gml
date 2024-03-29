//misc textbox stuff.
confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
//drawing the textbox.
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 140;

//setup (making the textbox stop you from moving + misc stuff).
if(setup == false) {
	setup = true;
	
	oPlayer.cam_move = false;
	
	draw_set_font(fText);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//page looping
	page_number = array_length(text);
	for (var p = 0; p < page_number; p++){
		//how many charactars are in the page and store it.
		text_length[p] = string_length(text[p]);	
		
		//get the x position (center textbox).
		
		text_x_offset[p] = 44;
	}

}
//Typing text.
if draw_char < text_length[page] {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);	
}
//Flip through pages.
if confirm_key {
		//if the typing is done
	if draw_char == text_length[page]{
		//next page
		if page < page_number - 1 {
			page++
			draw_char = 0;
		} else
		//destroy the textbox
		{
			instance_destroy(oTextbox, true);
			oPlayer.cam_move = true;

		}	
	}
}  else if skip_key and draw_char != text_length[page]{
	//fill the page
	draw_char = text_length[page];

}

//draw the textbox
txt_image += txt_image_spd;
txtb_sprite_w = sprite_get_width(txtb_sprite);
txtb_sprite_h = sprite_get_height(txtb_sprite); 
draw_sprite_ext(txtb_sprite, txt_image, textbox_x + text_x_offset[page], textbox_y, textbox_width/txtb_sprite_w, textbox_hight/txtb_sprite_h, 0, c_white, 1);
 
//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_seperation, line_width);

