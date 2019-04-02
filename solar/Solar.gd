extends Spatial

func _ready():
	pass # Replace with function body.
var angle = 0.15
func _process(delta):
	$Earth.transform.basis = $Earth.transform.basis.rotated(Vector3(0, 0, 1), angle)
	angle += delta

