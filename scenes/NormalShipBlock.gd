extends Spatial


onready var rb = get_node("RigidBody")
var blockPhys

func _ready():
	#var player = get_tree().get_root().find_node("Player")
	Global.player.connect("hit", self, "on_Player_hit")
	pass


func on_Player_hit(object):
	if object == rb:
		
		get_tree().get_root().add_child(load("res://scenes/ShipBlockPhys.tscn").instance(), true)
		blockPhys = get_tree().get_root().get_node("ShipBlockPhys")
		blockPhys.set_name(Global.generate_unique_name())
		blockPhys.translation = (rb.global_transform.origin)
		rb.queue_free()
		blockPhys.add_torque(Vector3(rand_range(50,500), rand_range(50,500), rand_range(50,50)))
		#rb.set_gravity_scale(1)
		#rb.axis_lock_linear_x = false
		#rb.axis_lock_linear_y = false
		#rb.axis_lock_linear_z = false
		#rb.axis_lock_angular_x = false
		#rb.axis_lock_angular_y = false
		#rb.axis_lock_angular_z = false
		#rb.add_torque(Vector3(rand_range(50,500), rand_range(50,500), rand_range(50,50)))
