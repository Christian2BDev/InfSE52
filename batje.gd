extends StaticBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _input(event):
	var Camera = get_viewport().get_camera_3d()
	var position2D = get_viewport().get_mouse_position()
	var dropPlane  = Plane(Vector3(0, 0, 1), 0)
	var position3D = dropPlane.intersects_ray(Camera.project_ray_origin(position2D),Camera.project_ray_normal(position2D))
	position = Vector3(position3D.x,position3D.y,20)
