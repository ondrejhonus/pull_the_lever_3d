extends Label

@onready var globals = get_node("/root/global")

func swap_array(str):
	return [str[1], str[0]]

func _ready() -> void:
	if !globals.is_pulled:
		$".".text = "You decided to kill %s instead of %s" % globals.sentences[globals.current_level - 1] # Current level - 2 coz i already added +1 to current level
	else:
		$".".text = "You decided to kill %s instead of %s" % swap_array(globals.sentences[globals.current_level - 1])
