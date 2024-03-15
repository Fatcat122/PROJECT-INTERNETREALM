///Textbox perams
textbox_width = 289;
textbox_hight = 76;
border = 8;
line_seperation = 15;
line_width = textbox_width - border*2;
txtb_sprite = sTextbox
txt_image = 0;
txt_image_spd = 0;
//For animated images on the textbox divide the fps of the sprite by 60 and put
//The problem in txt_image_spd like this!:
//txt_image_spd = (Sprite fps)/60;

//The text
page = 0;
page_number = 0;
text[0] = "* Congrats, you're a hacker!; for your prize, a ballistic missle is heading towards your house!";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 0.5;

setup = false;
skip_key = keyboard_check_pressed(ord("X"))
//To use just add another number like this:
//text[0] = "TESTING"; just make sure not to use an already used number!
//Then just copy the code from the last one and change the numbers to 
//whatever numbers you are using! (PS not draw_char or text_spd,
//keep those the same!) Also you need to add it to oTextboxOpener!





