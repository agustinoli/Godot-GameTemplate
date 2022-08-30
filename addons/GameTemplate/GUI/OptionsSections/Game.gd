extends VBoxContainer

onready var button:PackedScene = preload("res://addons/GameTemplate/GUI/Buttons/DefaultButton.tscn")
onready var button_parent:HBoxContainer = $"Panel/VBoxContainer/MarginContainer/HBoxContainer"

func _ready()->void:
	MenuEvent.connect("Game", self, "on_show_game")
	MenuEvent.Game = false
	
	#Localization
	SettingsLanguage.connect("ReTranslate", self, "retranslate")
	retranslate()


func _on_Back_pressed()->void:
	MenuEvent.Game = false

#EVENT SIGNALS
func on_show_game(value:bool)->void:
	visible = value
	if visible:
		get_tree().get_nodes_in_group("Game")[0].grab_focus()

#Localization
func retranslate()->void:
	find_node("GameLabel").text = tr("GAME")
	find_node("Back").text = tr("BACK")
