instance_destroy(other)

if (global.vida > 1) {
    global.vida -= 1;

    var maior = -1;
    var inst_destruir = noone;

    with (objVida) {
        if (index_vida > maior) {
            maior = index_vida;
            inst_destruir = id;
        }
    }

    if (instance_exists(inst_destruir)) {
        with (inst_destruir) instance_destroy();
    }
}
else{
	instance_destroy(objVida)
	instance_destroy()
	global.perguntaContinuar = true;
}