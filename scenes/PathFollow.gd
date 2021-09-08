extends PathFollow

var ship3

func _process(delta):	
	if Input.is_action_just_pressed("debug_r"):
		for name in Global.names:
			print(name)
		offset = 0
		if ship3 != null:
			ship3.call_deferred('free')
		add_child(load("res://scenes/Ship3x3x3.tscn").instance(), true)
		ship3 = get_node("Ship3x3x3")
		ship3.set_name(Global.generate_unique_name())
		
