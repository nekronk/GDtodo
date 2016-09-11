
extends Control

var tween
var speed = 0.5
var bg
var clicked = false
var focus = false

func _ready():
	tween = get_node("/root/app/Tween")
	clicked = false
	focus = false


#func _input(event):
#	if (event.type==InputEvent.MOUSE_BUTTON and event.pressed):
#		print("click!")

	
func _init():
	pass

func _on_Check_toggled( pressed ):
	if get_node("Check").is_pressed():
		bg = get_node("BG")
		tween.interpolate_method(bg,"set_opacity", 0, 1, speed, Tween.TRANS_QUART, Tween.EASE_OUT)
		tween.start()
	else:
		tween.interpolate_method(bg,"set_opacity", 1, 0, speed/2, Tween.TRANS_QUAD, Tween.EASE_IN)
		tween.start()
		#bg.hide()



func _on_TextureButton_pressed():
	print("Click!")
