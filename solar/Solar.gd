extends Spatial

func _ready():
	#print($Sun.translation - $Earth.translation)
	pass # Replace with function body.


var speed=0.005
var moon_speed = 0.05

func _process(delta):
	$Sun/Earth.rotate_x(moon_speed)
	$Sun.rotate_y(speed)
	
	

func _input(event):
	if event is InputEventKey:
		if event.pressed and Input.is_action_pressed("ui_right") and event.scancode == KEY_R:
			$Camera.rotate_z(0.01)
		elif Input.is_action_pressed("ui_up"):
			$Camera.translate(Vector3(0, 0.1, 0))
		elif Input.is_action_pressed("ui_down"):
			$Camera.translate(Vector3(0, -0.1, 0))
		elif Input.is_action_pressed("ui_right"):
			$Camera.translate(Vector3(0.1, 0, 0))
		elif Input.is_action_pressed("ui_left"):
			$Camera.translate(Vector3(-0.1, 0, 0))
		elif Input.is_action_pressed("ui_page_up"):
			$Camera.translate(Vector3(0, 0, 0.1))
		elif Input.is_action_pressed("ui_page_down"):
			$Camera.translate(Vector3(0, 0, -0.1))
			