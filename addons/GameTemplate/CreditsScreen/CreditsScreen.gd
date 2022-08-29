extends Node2D

func _ready():
	$CanvasLayer/Label.text = tr("CREDITS")
	var more_credits = true
	var credit_index = 1
	
	$CanvasLayer/Label.text = "CREDITS\n"
	while more_credits:
		var credit_sr = str("CREDITS", credit_index)
		if tr(credit_sr) == credit_sr:
			more_credits = false
		else:
			$CanvasLayer/Label.text += str( tr(credit_sr), " ", tr("BY"), "\n" )
			credit_index += 1
