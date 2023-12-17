extends RigidBody3D
var old_last
var last 
var served

func _on_body_entered(body):
	if(body.is_in_group("bat")):
		served = true
	if body.is_in_group("table") && served:
		old_last = last
		last = body.name
		if last == old_last:
			score(body.name+"label")
			reset()
	if body.is_in_group("bound"):
		if last == null:
			print("vaulty serve")
		else:
			if last == "p1":
				score("p2label")
			else:
				score("p1label")
		reset()
func score(who):
	get_node("../UI/UIControl/64/" + who).text = str(int(get_node("../UI/UIControl/64/" + who).text) + 1)
	get_node("../cheer" + str(RandomNumberGenerator.new().randi_range(1,3))).play() 
	var punt= int(get_node("../UI/UIControl/64/" + who).text)
	if punt >=11:
		get_tree().change_scene_to_file("res://scenes/gameover.tscn");

func reset():
	position = Vector3(0,17.287,15.702)
	linear_velocity = Vector3(0,0,0)
	old_last =""
	last = ""
	served = false
