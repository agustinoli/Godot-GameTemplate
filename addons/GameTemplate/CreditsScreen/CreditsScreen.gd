extends Node2D

func _ready():
	var config = ConfigFile.new()
	var err = config.load("res://config.cfg")

	if err != OK:
		return

	$CanvasLayer/Label.text = str(tr("CREDITS"), "\n\n")
	for credit in config.get_section_keys("credits"):
		print(credit)
		$CanvasLayer/Label.text += str(tr(credit), " ", tr("BY"), " ", config.get_value("credits", credit), "\n")


func _input(event):
	if event is InputEventKey and event.pressed:
		Game.emit_signal("ChangeScene", "res://MainMenu/MainMenu.tscn")
