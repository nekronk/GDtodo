
extends Control

var tween
var bg
func _ready():
	#get_node("Label").connect("focus_enter")
	pass

func _init():
	print('Create')

func _on_Check_toggled( pressed ):
	if get_node("Check").is_pressed():
		bg = get_node("BG")
		bg.show()
		#bg.set_opacity(1.0)
		#bg.set_modulate(Color(0.84, 0.36, 0.28))
		#bg.set_modulate(Color(0.23, 0.23, 0.23))
	else:
		bg.hide()