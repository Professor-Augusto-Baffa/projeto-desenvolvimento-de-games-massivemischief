extends Path2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var inc=0
var speed=1000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	inc+=delta*speed
	$MobPath1.progress=inc
