extends Button

@onready var globals = get_node("/root/global")

func _on_pressed() -> void:
	globals.level_sentence = globals.sentences[globals.current_level-1] # - 1 coz its from index 0 
	get_tree().change_scene_to_file("res://scenes/play.tscn")
