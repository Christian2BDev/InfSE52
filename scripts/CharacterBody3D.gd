extends CharacterBody3D
 
var touching
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
		var touch_index = event.index
		if event.index >=1:
			touching = true
		else:
			touching = false
func _process( some_change ):
	if touching:
		position = position.move_toward(Vector3(position.x, position.y,0),25 * get_process_delta_time())
	else:
		position = position.move_toward(Vector3(position.x, position.y,20),1)
	look_at(Vector3(0,15,-10))
	#if true:
		#position = position.move_toward(Vector3(position.x, position.y,0),25 * get_process_delta_time())
	#else:
		#if position.z != 20:
			#position = position.move_toward(Vector3(position.x, position.y,20),1)

