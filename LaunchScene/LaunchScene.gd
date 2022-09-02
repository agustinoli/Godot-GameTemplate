extends ColorRect

export (String, FILE, "*.tscn") var Next_Scene: String


func _ready():
	Game.emit_signal("ChangeScene", Next_Scene)
	#Silen Wolf configuration
	SilentWolf.configure({
				"api_key": Env.get("SILENTWOLF_API_KEY"),
				"game_id": Env.get("SILENTWOLF_GAME_ID"),
				"game_version": "1.0",
				"log_level": 0
			  })
