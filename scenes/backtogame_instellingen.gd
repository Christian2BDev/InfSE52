extends Button



func _pressed():
	
	var inst =preload("res://scenes/instellingen_game.tscn").instantiate()
	get_tree().root.remove_child(inst)
	
