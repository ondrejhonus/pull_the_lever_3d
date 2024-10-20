extends Label3D

@onready var globals = get_node("/root/global")

var time_left

func _ready() -> void:
	$Label.text = globals.sentence # - 1 coz its from index 0
	globals.time_elapsed = 0

func _process(delta: float) -> void:
	globals.time_elapsed += delta
	if globals.time_elapsed < 11:
		$RichTextLabel.text = " The train arrives in %d seconds" % [11 - globals.time_elapsed]
	elif globals.time_elapsed >= 13:
		get_tree().change_scene_to_file("res://scenes/results.tscn")
	else:
		$RichTextLabel.text = ""
	
	
