extends RigidBody3D


var velocity=Vector2(200,200)

func _physics_process(delta):
	var collision_info=move_and_collide(velocity * delta)
