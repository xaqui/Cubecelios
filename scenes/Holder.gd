extends Spatial

var block

func spawn_block():
	add_child(load("res://scenes/NormalShipBlock.tscn").instance(), true)
	block = get_node("NormalShipBlock")

