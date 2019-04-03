extends Spatial

func _ready():
	#print($Sun.translation - $Earth.translation)
	pass # Replace with function body.

var radius=0.5
var x=0;
var y=0;
var angle=0.005
func _process(delta):
	$Sun.rotate_y(angle)
	$Sun/Earth.rotate_x(angle)
	
	if angle > PI:
		angle = 0
