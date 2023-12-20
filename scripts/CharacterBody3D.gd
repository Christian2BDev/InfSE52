extends CharacterBody3D
var presing

func _input(event):
	
	if event is InputEventMouseMotion:
		var Camera = get_viewport().get_camera_3d()
		var position2D = get_viewport().get_mouse_position()
		var dropPlane  = Plane(Vector3(0, 0, 1), 0)
		var position3D = dropPlane.intersects_ray(Camera.project_ray_origin(position2D),Camera.project_ray_normal(position2D))
		if position3D.y > 13:
			position = Vector3(position3D.x,position3D.y,position.z)
		else:
			position = Vector3(position3D.x,position.y,position.z)
	if event is InputEventScreenTouch:
		presing = event.pressed
		#if event.index >=1:
			#presing = true
		#else:
			#presing = false
			

func _process( some_change ):
	look_at(Vector3(0,20,-10))
	if presing:
		position = position.move_toward(Vector3(position.x, position.y,0),25 * get_process_delta_time())
	else:
		position = position.move_toward(Vector3(position.x, position.y,20),1)
