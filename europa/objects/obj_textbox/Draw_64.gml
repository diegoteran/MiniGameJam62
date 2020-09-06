width = display_get_gui_width();
height = display_get_gui_height();


draw_set_color(c_black);
draw_rectangle(50,2*(height/3), width-50, height-50, false)

draw_set_color(c_white);
draw_rectangle(50,2*(height/3), width-50, height-50, true)


draw_set_color(c_white);
draw_set_font(text_font);
draw_text_ext(60, 2*(height/3) + 10, text, 50, width-150)

draw_set_color(c_white);
draw_set_font(fnt_continue);
draw_text((width/2) - 175, height - 105, "Press Space to close"); 