extends Button

var inst =preload("res://scenes/popup.tscn").instantiate()

func _pressed():
	$"../..".add_child(inst)
