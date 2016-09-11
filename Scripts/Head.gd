
extends Control

var custom_func #Module
var date
var time

func add_zero(dict):
	for i in dict:
		if str(dict[i]).length() < 2:
			dict[i] = "0" + str(dict[i])
	return dict

func data_time():
	time = add_zero(OS.get_time())
	date = add_zero(OS.get_date())

func _init():
	data_time()

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	data_time()
	get_node("Time").set_text(str(time["hour"]) + ":" + str(time["minute"]) + ":" + str(time["second"]))
	get_node("Date").set_text(str(date["day"]) + "." + str(date["month"]) + "." + str(date["year"]))
	var root = get_node("/root")
	#print(root.get_size_override())
	var debug = get_node("debug")
	var ratio = root.get_size_override()[0] / root.get_size_override()[1]
	debug.set_text(str(root.get_size_override()))# + ' Ratio:' + str(ratio))
	if ratio < 1:
		debug.set_text(debug.get_text() + '  ' + str(round(abs((ratio-1)*10))))
	#var bottom = get_node("/root/app/Tween/BOTTOM")
	var scroll = get_node("/root/app/Tween/TASKS/ScrollContainer")
	#scroll.set_size(Vector2(800, root.get_size_override()[1]))
	#scroll.set_custom_minimum_size(Vector2(800, root.get_size_override()[1]))
	
	