extends CharacterBody3D

@export var speed=500000
var ball

func _ready():
	ball = $ball


func _physics_process(delta):
	var direction=(ball.position).normalized()
	velocity.x =direction.x * speed * delta
