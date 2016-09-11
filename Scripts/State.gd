extends Node

var task = {
	"name" : "set name here",
	"discription" : "here is discription",
	"tags" : ["now", "today"],
	"created" : [11, 09, 2016],
	"ended" : []
	}

var all_tasks = {
	0 : task
	}

func _init():
	print(all_tasks)

