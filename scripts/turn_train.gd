extends Node3D

@onready var globals = get_node("/root/global")

func _process(delta: float) -> void:
	if globals.is_pulled:
		$Straight.visible = false
		$Left.visible = true
	else:
		$Straight.visible = true
		$Left.visible = false
