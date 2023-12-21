extends CharacterBody3D


var ball

func _ready():
	ball = $"../ball"


func _physics_process(delta):
	if ball.position.z <=0:
		position = position.move_toward(Vector3(ball.position.x, ball.position.y,ball.position.z + 2),0.3)
	else:
		position = position.move_toward(Vector3(ball.position.x, ball.position.y,-17),0.05)
		
