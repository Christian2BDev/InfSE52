extends TextureButton

var inst =preload("res://scenes/instellingen_game.tscn").instantiate()

func _pressed():
	$"../..".add_child(inst)
