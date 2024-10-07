extends Label3D

var time_left
@onready var globals = get_node("/root/global")

func _ready() -> void:
	$Label.text = globals.sentences[globals.current_level - 1] # - 1 coz its form index 0
	globals.time_elapsed = 0

func _process(delta: float) -> void:
	globals.time_elapsed += delta
	time_left = 11 - globals.time_elapsed
	if time_left >= 0:
		$RichTextLabel.text = " The train arrives in %d seconds" % [time_left]
	else:
		$RichTextLabel.text = ""
	
	
