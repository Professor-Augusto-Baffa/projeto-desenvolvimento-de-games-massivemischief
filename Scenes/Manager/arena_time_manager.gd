extends Node

signal diff_increase

const DIFFICULTY_INTERVAL = 5

@export var end_screen_scene: PackedScene

@onready var timer = $Timer

var arena_difficulty = 0

func _ready():
	timer.timeout.connect(on_victory_timeout)

func get_time_elapsed():
	return timer.wait_time - timer.time_left

func _process(delta):
	var next_time_target = timer.wait_time - (arena_difficulty + 1) * DIFFICULTY_INTERVAL
	if timer.time_left <= next_time_target:
		arena_difficulty += 1
		diff_increase.emit()


func on_victory_timeout():
	var end_instance = end_screen_scene.instantiate()
	add_child(end_instance) 
