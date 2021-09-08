extends Node

var player
var names = []
var count = 0

func generate_unique_name():
	var name = "tmp_" + String(count)
	if count == 999:
		count = 0
	if names.find(name) == -1:
		names.append(name)
		count += 1
		return name
	else:
		return "fail"
