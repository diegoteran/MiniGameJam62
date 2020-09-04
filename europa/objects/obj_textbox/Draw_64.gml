draw_set_color(c_black);
draw_rectangle(50,2*(view_hport/3), view_wport-50, view_hport-50, true)

draw_set_color(text_box_color);
draw_rectangle(50,2*(view_hport/3), view_wport-50, view_hport-50, false)

draw_set_color(text_color);
draw_set_font(text_font);
draw_text_ext(60, 2*(view_hport/3) + 10, text, 35, view_wport-150)


draw_text((view_wport/2) - 100, view_hport - 80, "Press Space to close");