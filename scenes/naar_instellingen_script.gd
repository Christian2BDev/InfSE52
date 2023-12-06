extends TextureButton

var inst =preload("res://scenes/instelling_ingame.tscn").instantiate()

func _pressed():
	$"../..".add_child(inst)
