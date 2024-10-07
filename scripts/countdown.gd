extends Label3D

var time_left
@onready var globals = get_node("/root/global")

func _ready() -> void:
	$Label.text = globals.sentence # - 1 coz its from index 0
	globals.time_elapsed = 0

func _process(delta: float) -> void:
	globals.time_elapsed += delta
	time_left = 11 - globals.time_elapsed
	if time_left > 1:
		$RichTextLabel.text = " The train arrives in %d seconds" % [time_left]
	else:
		$RichTextLabel.text = ""
	
	
