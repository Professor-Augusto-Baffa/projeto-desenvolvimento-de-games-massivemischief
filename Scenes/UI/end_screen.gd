extends CanvasLayer

func _ready():
	get_tree().paused = true
	$%RestartButton.pressed.connect(on_restart_pressed) 
	$%QuitButton.pressed.connect(on_quit_pressed)
	
	
func set_defeat():
	$%NameLabel.text = "Wasted"
	$%DescriptionLabel.text = "You failed"

func on_restart_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")
	

func on_quit_pressed():
	get_tree().quit()
	
