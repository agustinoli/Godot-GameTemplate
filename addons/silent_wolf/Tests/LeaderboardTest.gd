extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewScore_pressed():
	SilentWolf.Scores.persist_score("player_name", 12)

func _on_ResetScene_pressed():
	PauseMenu.can_show = false
	Game.emit_signal("ChangeScene", "res://addons/silent_wolf/Tests/LeaderboardTest.tscn")
