if alarm[0] <=0 {
	alarm[0] = 60 * 2;
}

// Posição da câmera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Posição da vida relativa à câmera
x = cam_x + 80 + (index_vida * 60);
y = cam_y + 32;