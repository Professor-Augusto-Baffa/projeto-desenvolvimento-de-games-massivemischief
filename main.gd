extends Node

@export var mob_scene: PackedScene
var score

# Called when the node enters the scene tree for the first time.
func _ready():
	new_game()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()
	$BackGround/Player.hide()

func new_game():
	score = 0
	$StartTimer.start()


func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()


func _on_score_timer_timeout():
	score += 1


func _on_mob_timer_timeout():
	var mob = mob_scene.instantiate()
	var pos = randi() % 3
	
	
	#var mob_spawn_location
	#if pos == 0:
		#mob_spawn_location = $path1/MobPath1
	#elif pos == 1:
		#mob_spawn_location = $path2/MobPath2
	#elif pos == 2:
		#mob_spawn_location = $path3/MobPath3
	#mob_spawn_location.progress_ratio = randf()
	#
	#
	#mob.position = mob_spawn_location.position
	#
	#var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	#mob.Velocity = velocity
	#
	#add_child(mob)
	
	
