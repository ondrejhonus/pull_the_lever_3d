extends CharacterBody3D

@onready var globals = get_node("/root/global")

func _on_interactable_interacted(interactor: Interactor) -> void:
	if (globals.time_elapsed < 7):
		if globals.is_pulled:
			$lever/pulled.visible = false
			$lever/unpulled.visible = true
			$tracks/pulled.visible = false
			$tracks/unpulled.visible = true
			globals.is_pulled = false
		else:
			$lever/pulled.visible = true
			$lever/unpulled.visible = false
			$tracks/pulled.visible = true
			$tracks/unpulled.visible = false
			globals.is_pulled = true
	else:
		$pull_text.text = "The lever can't be pulled anymore :/"

func _on_interactable_focused(interactor: Interactor) -> void:
	$pull_text.visible = true

func _on_interactable_unfocused(interactor: Interactor) -> void:
	$pull_text.visible = false
