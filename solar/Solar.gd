extends Spatial

func _ready():
	print($Sun.translation - $Earth.translation)
	pass # Replace with function body.

var radius=0.5
var x=0;
var y=0;
var angle=0.0
func _process(delta):
	$Earth.global_translate(Vector3(x,0,y))
	
	#print(y)
	#print(x)
	x = radius*cos(angle)
	y = radius*sin(angle)
	
	#print("angle :" + str(angle))
	angle = (angle+0.01)
