if (global.perguntaContinuar) {
    if (keyboard_check_pressed(ord("S"))) {
        // Reiniciar room (continuar)
        room_restart();
        global.perguntaContinuar = false;
    }
    if (keyboard_check_pressed(ord("N"))) {
        // Fechar o jogo
        game_end();
    }
}
/*
🔄 Alternativa: Voltar pro menu ao invés de fechar o jogo:
Substitua game_end() por:

gml
Copiar
Editar
room_goto(rmMenu);
*/