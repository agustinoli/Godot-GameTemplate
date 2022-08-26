extends Node2D

# Creates a new timeout by creating a new Timer with the specified parameters
#
# node: node that will execute the timeout's function
# function: name of the timeout's function
# timeout: timeout's time in seconds
#
# Returns a reference to the timer
func add_timeout(node : Node, function : String, timeout : int)->Timer:
	var timer = Timer.new()
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(timeout)
	timer.connect("timeout", node, function)
	timer.autostart = true
	add_child(timer)
	return timer

# Deletes a timeout
#
# timer: timer's reference returned from add_timeout()
func delete_timeout(timer : Timer)->void:
	if timer == null:
		print_debug("GlobalTimer: delete_timeout() called with empty timer")
	else:
		timer.stop()
		remove_child(timer)
		timer.queue_free()

