extends Node

var player
var names = []

func generate_unique_name():
	var name = "tmp_" + String(rand_range(0,999))
	if not names.find(name):
		names.append(name)
		return name
	return "fail"
