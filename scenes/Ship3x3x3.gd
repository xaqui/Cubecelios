extends Spatial

var holders = []
const PARTS_AMOUNT = 3
var pathf
var speed = 10

func _ready():
	var pos = 0
	pathf = get_parent()
	for _i in range(PARTS_AMOUNT):
		add_child(Spatial.new())
	for holder in get_children():
		holder.translation.x += pos
		holder.set_script(load("res://scenes/Holder.gd"))
		pos += 2.1
		holder.spawn_block()

func _physics_process(delta):
	pathf.offset += delta * speed

	
