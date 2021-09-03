extends KinematicBody

var max_speed = 12
var velocity = Vector3.ZERO
signal hit

func _ready():
	Global.player = self

func _physics_process(delta):
	var input_vector = get_input_vector()
	
	if Input.is_action_just_pressed("fire"):
		var direct_state = get_world().direct_space_state
		check_collision()
		get_node("RayRender").show()
	if Input.is_action_just_released("fire"):
		get_node("RayRender").hide()
	apply_movement(input_vector)
	velocity = move_and_slide(velocity, Vector3.UP)

func get_input_vector():
	var input_vector = Vector3.ZERO
	input_vector.x = Input.get_action_strength("move_r") - Input.get_action_strength("move_l")
	input_vector.z = Input.get_action_strength("move_bw") - Input.get_action_strength("move_fw")
	return input_vector.normalized()
	
func apply_movement(input_vector):
	velocity.x = input_vector.x * max_speed
	velocity.z = input_vector.z * max_speed

func check_collision():
	if $RayCast.is_colliding():
		emit_signal("hit", $RayCast.get_collider())
