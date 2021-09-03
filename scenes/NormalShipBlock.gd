extends Spatial


#Connect to Player script for signaling
#Connect to parent script for signaling
onready var rb = get_node("RigidBody")

func _ready():
	#var player = get_tree().get_root().find_node("Player")
	Global.player.connect("hit", self, "on_Player_hit")
	pass


func on_Player_hit(object):
	if object == rb:
		get_parent().live = false
		rb.set_gravity_scale(1)
		rb.add_torque(Vector3(rand_range(50,500), rand_range(50,500), rand_range(50,50)))
