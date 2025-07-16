/*if (global.perguntaContinuar) {
    var msg = "Deseja continuar?\nS - Sim    N - Não";
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_font(-1); // ou um font customizado se quiser
    draw_text(room_width/2, room_height/2, msg);
}*/
if (global.perguntaContinuar) {
    // Mensagem
    var msg = "Deseja continuar?\nS - Sim    N - Não";

    // Fonte (opcional: defina a sua fonte aqui, se quiser)
    // draw_set_font(fnt_dialogo);

    // Tamanho da caixa
    var box_w = 400;
    var box_h = 150;
    var box_x = (display_get_gui_width() - box_w) / 2;
    var box_y = (display_get_gui_height() - box_h) / 2;

    // Fundo (retângulo com sombra)
    draw_set_color(c_white);
    draw_rectangle(box_x - 2, box_y - 2, box_x + box_w + 2, box_y + box_h + 2, false); // Borda

    draw_set_color(make_color_rgb(0, 0, 0)); // Preto
    draw_set_alpha(0.85);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false); // Fundo
    draw_set_alpha(1);

    // Texto (centralizado)
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);

    draw_text(box_x + box_w / 2, box_y + box_h / 2, msg);
}
