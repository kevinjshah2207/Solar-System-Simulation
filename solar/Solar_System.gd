extends Spatial

# Called when the node enters the scene tree for the first time
func _ready():
	pass # Replace with function body.

var angle = 0.01
func _process(delta):
	$Sun.rotate_y(angle)