extends TextureButton


var inst 

func _ready():
	inst = $"../../../Popup"
	inst.visible = false;
	
func _pressed():
	
	inst.visible = true
