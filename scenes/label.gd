extends Label

@onready var globals = get_node("/root/global")

func swap_array(str):
	return [str[1], str[0]] # Return opposite indexes

func _ready() -> void:
	if !globals.is_pulled:
		$".".text = "You decided to kill %s instead of %s" % globals.sentences[globals.current_level - 1]
	else:
		$".".text = "You decided to kill %s instead of %s" % swap_array(globals.sentences[globals.current_level - 1])
