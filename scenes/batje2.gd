extends CharacterBody3D

var enemy_following=true
func _physics_process(delta):
	if enemy_following==true:
