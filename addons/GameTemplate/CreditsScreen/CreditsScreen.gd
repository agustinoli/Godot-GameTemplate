extends Node2D

func _ready():
	var config = ConfigFile.new()
	var err = config.load("res://credits.cfg")
	var amount
	
	if err != OK:
		amount = 0
	else:
		amount = config.get_value("credits", "amount")
	
	var title = tr("CREDITS")
	var credits = ""
	
	for n in amount:
		credits += str( tr( str("CREDITS",n+1) ), " ", tr("BY"), "\n" )
	
	$CanvasLayer/Label.text = str(title, "\n\n", credits)
	
