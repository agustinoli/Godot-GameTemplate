extends Node2D

var timer


func _ready():
	$CanvasLayer/AddButton.connect("pressed", self, "add_timeout")
	$CanvasLayer/AddOneshotButton.connect("pressed", self, "add_oneshot_timeout")
	$CanvasLayer/AddAutostartButton.connect("pressed", self, "add_autostart_timeout")
	$CanvasLayer/StartButton.connect("pressed", self, "start_timeout")
	$CanvasLayer/StopButton.connect("pressed", self, "stop_timeout")
	$CanvasLayer/DeleteButton.connect("pressed", self, "delete_timeout")


func add_timeout():
	timer = GlobalTimer.add_timeout(self, "print_text", 2, false, false)


func add_autostart_timeout():
	timer = GlobalTimer.add_timeout(self, "print_text", 2, true, false)


func add_oneshot_timeout():
	timer = GlobalTimer.add_timeout(self, "print_text", 2, false, true)


func start_timeout():
	GlobalTimer.start_timeout(timer)


func stop_timeout():
	GlobalTimer.stop_timeout(timer)


func delete_timeout():
	GlobalTimer.delete_timeout(timer)


func print_text():
	print($CanvasLayer/TextEdit.text)
