#region Controles
//Letras
teclaDir = keyboard_check(ord("D")) // Direita
teclaEsq = keyboard_check(ord("A")) // Esquerda
teclaCima = keyboard_check(ord("W")) // Cimma
teclaBaixo = keyboard_check(ord("S")) // Baixo

//Pulo
teclaPulo = keyboard_check(vk_space) // Pular

//Setas
setaDir = keyboard_check(vk_right)
setaEsq = keyboard_check(vk_left)
setaCima = keyboard_check(vk_up)
setaBaixo = keyboard_check(vk_down)

//Ataques
teclaAtaque = keyboard_check_pressed(ord("Q"))

#endregion




#region Movimentação
/*Lembrar qporque tinha esquecido
Quando o valor é verdadeiro, o if gera 1, quado é falso, 0
Ou seja, quando nenhuma tela é presiconado, o valor ferado é 0
QUando é acionado o valor é um e vamos osmar este 1
como para esquerda,, o valor tem q ser negativo, colocamos para somar egatico
como para direita é posiivo, somamos ele

*/
var planoHorizontal = (teclaDir or setaDir) - (teclaEsq or setaEsq)


velHorizontal = planoHorizontal * velocidade

velVertical += gravidade

if velHorizontal != 0{
	image_xscale = sign(velHorizontal)
}

	#region Colisões
	//Horizontal
	if place_meeting(x+velHorizontal, y, objParede){
		while( !place_meeting( x + sign(velHorizontal), y, objParede) ){
			x += sign(velHorizontal)
		}
		velHorizontal = 0
	}
	
	
	//Vertical
	if place_meeting(x, y + velVertical, objParede){
		while( !place_meeting( x, y + sign(velVertical), objParede) ){
			y += sign(velVertical)
		}
		velVertical = 0
	}

	#endregion
	
x += velHorizontal
y += velVertical

//Pulo
if place_meeting(x, y+1, objParede) and (teclaPulo or teclaCima or setaCima){
	velVertical -= 8	
}

#endregion


#region Ataque
	var direcao = direction
	var ataqueX = (x + 4) * (direcao)
	var _xx = x + lengthdir_x(35, image_angle)
	var y_offset = lengthdir_y(-90, image_angle)
	
	if teclaAtaque and global.cargas > 0 {
		
		audio_play_sound(somCaminho, 1, 0)
		
		with (instance_create_layer(_xx, y - 35, "Ataque", objAtaque)){
			global.cargas--
			speed = 10
			direction = -90 + 90 * other.image_xscale // Usar a outra imagem do objeto
			image_angle =  direction
			
		}
	}
#endregion

#region Mortes
	if y < 0{
			instance_destroy()
			global.perguntaContinuar = true;
	}
#endregion