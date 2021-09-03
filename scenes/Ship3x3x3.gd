extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	#for child in get_child_count():
	#	var c = get_child(child)
	#	if c.live:
	#		c.translation = c.translation.move_toward(Vector3(10,0,0), delta * 1)
	
	self.translation = self.translation.move_toward(Vector3(10,10,0), delta * 1)
