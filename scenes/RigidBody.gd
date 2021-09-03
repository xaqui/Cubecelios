extends RigidBody

	
func _on_Player_hit(object):
	if object == self:		
		axis_lock_linear_x = false
		axis_lock_linear_y = false
		axis_lock_linear_z = false
		add_torque(Vector3(rand_range(50,500), rand_range(50,500), rand_range(50,50)))
