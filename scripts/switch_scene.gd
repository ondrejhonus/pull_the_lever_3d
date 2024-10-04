extends Button

@onready var globals = get_node("/root/global")

func _on_pressed() -> void:
	globals.level_sentence = globals.sentences[globals.current_level]
	get_tree().change_scene_to_file("res://scenes/level" + str(globals.current_level) + ".tscn")
