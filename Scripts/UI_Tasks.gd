extends Control

var state 
	
var task_container
var UI_TASKS
var debug
var scroll

var rnd_tasks = ['Create the blender creature', 
				'make helmet in blender', 
				'going to the store',
				'video presentation of cpn',
				'listen the placenta - pain',
				'gaming on the psvita',
				'move out trash from home']

func _init():
	pass
	
func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	state = get_node("/root/State")
	randomize()
	UI_TASKS = get_node("ScrollContainer/VBoxContainer")
	task_container = get_node("ScrollContainer/VBoxContainer")
	
	debug = get_node("/root/app/Tween/HEADER/debug")
	debug.set_text(debug.get_text() +'  '+ str(task_container.get_parent().get_v_scroll()))
	
	var root_x = get_node("/root").get_size_override()[1]
	get_node("ScrollContainer").set_size(Vector2(800, root_x - 160))
	print(state.all_tasks.size())
	
func _on_Add_pressed():
	task_container.remove_child(get_node("ScrollContainer/VBoxContainer/END"))
	
	var new_task = get_node("ScrollContainer/VBoxContainer/Task").duplicate(true)
	new_task.get_node("Label").set_text(rnd_tasks[randi()%rnd_tasks.size()])
	new_task.get_node("Check").set_pressed(false)
	new_task.get_node("BG").set_opacity(0.0)
	#new_task.get_node("BG").hide()
	task_container.add_child(new_task)
	task_container.add_child(get_node("END").duplicate(true))
	
	state.all_tasks[state.all_tasks.size()] = {}
	print(state.all_tasks)
	
	
	
	
	
	
	