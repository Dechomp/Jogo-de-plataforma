velocidade = 5
velHorizontal = 0
velVertical = 0
gravidade = 0.4

global.cargas = 10
global.vida = 3


#region Vida
// Criar os 3 objetos de vida
for (var i = 0; i < global.vida; i++) {
    var obj = instance_create_layer(0, 0, "Instances", objVida);
    obj.index_vida = i; // caso queira usar mais tarde para controle individual
}
#endregion