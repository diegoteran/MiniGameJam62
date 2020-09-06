draw_set_color(c_white);
draw_rectangle(50,2*(view_hport/3), view_wport-50, view_hport-50, true)

draw_set_color(c_black);
draw_rectangle(50,2*(view_hport/3), view_wport-50, view_hport-50, false)

draw_set_color(c_white);
draw_set_font(text_font);
draw_text_ext(60, 2*(view_hport/3) + 10, text, 50, view_wport-150)

draw_set_color(c_white);
draw_set_font(fnt_continue);
draw_text((view_wport/2) - 175, view_hport - 105, "Press Space to close"); 