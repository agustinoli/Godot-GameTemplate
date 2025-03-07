extends Node2D

export (String, FILE, "*.tscn") var Next_Scene: String
export var Duration : float

var timer

func _ready():
	timer = GlobalTimer.create_timeout(self, "finish", Duration, true, true)


func finish():
	GlobalTimer.delete_timeout(timer)
	Game.emit_signal("ChangeScene", Next_Scene)
