extends TextureButton


func _pressed():
	get_node("..").visible = false
