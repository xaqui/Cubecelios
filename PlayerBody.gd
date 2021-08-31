extends RigidBody


const SPEED = 5
const ACCELERATION = 3
const DE_ACCELERATION = 5

var velocity = Vector3()

#func _ready():
	
func _physics_process(delta):
	var dir = Vector3()
	
	if(Input.is_action_pressed("move_fw")):
		#
