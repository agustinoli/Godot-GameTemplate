extends Node

export var key: String

func _ready():
	$Key.set_text(key)
	$Value.set_text(Env.get(key))
