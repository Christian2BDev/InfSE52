extends RigidBody3D






func _on_body_entered(body):
	print("Collision with:", body, "of type:", body.get_type())
