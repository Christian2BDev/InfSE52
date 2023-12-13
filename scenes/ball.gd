extends RigidBody3D
var old_last
var last
func _on_body_entered(body):
	old_last = last
	last = body.name
	if body.is_in_group("table"):
		if last == old_last:
			score(body.name+"label")
			reset()
	if body.is_in_group("bound"):
		reset()
func score(who):
	get_node("../UI/UIControl/64/" + who).text = str(int(get_node("../UI/UIControl/64/" + who).text) + 1)
	
	var punt= int(get_node("../UI/UIControl/64/" + who).text)
	if punt >=11:
		get_tree().change_scene_to_file("res://scenes/gameover.tscn");

func reset():
	position = Vector3(0,17.287,15.702)
	linear_velocity = Vector3(0,0,0)
	old_last =""
	last = ""
