// Cria um novo objeto de explosão
instance_create_layer(x, y, "Instances", objExplosao);

with(other){
		if sprite_index == sprParedeQuebrada{
			instance_destroy()
		}
		else if sprite_index == sprParedeRachada{
			sprite_index = sprParedeQuebrada
		}
		else{
			sprite_index = sprParedeRachada
		}
}

// Destroi o projétil
instance_destroy();






