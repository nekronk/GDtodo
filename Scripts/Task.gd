
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
		#bg = get_node("Tween/BG")
		bg = get_node("BG")
		bg.show()
		#bg.set_opacity(1.0)
		#bg.set_modulate(Color(0.84, 0.36, 0.28))
		#bg.set_modulate(Color(0.23, 0.23, 0.23))
		
		#tween = get_node("Tween")
		#tween.interpolate_method(bg, "set_opacity", 0.0, 1.0, 5, Tween.TRANS_QUART, Tween.EASE_IN_OUT)
		#Tween.interpolate_method(sprite,"set_pos", path_start, path_end, speed, Tween.TRANS_QUART, Tween.EASE_IN_OUT)
	else:
		#bg.set_opacity(0.0)
		bg.hide()