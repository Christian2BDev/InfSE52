extends RigidBody3D


func _on_body_entered(body):
	if body.is_in_group("p1"):
		print("p1 scored")
		score("p1label")
	if body.is_in_group("p2"):
		print("p2 scored")
		score("p2label")
		

func score(who):
	get_node("../UI/UIControl/64/" + who).text = str(int(get_node("../UI/UIControl/64/" + who).text) + 1)
	
	var punt= get_node("../UI/UIControl/64/" + who).text
	

