extends Spatial

var pos
var block
var live = true

func _ready():
	add_child(load("res://scenes/NormalShipBlock.tscn").instance(), true)
	block = get_node("NormalShipBlock")

func _process(delta):
	#if locked:
	#	block.translation = self.translation
	pass
