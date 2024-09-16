extends CharacterBody3D

var is_pulled = false

func _on_interactable_focused(interactor: Interactor) -> void:
	$pull_text.visible = true

func _on_interactable_interacted(interactor: Interactor) -> void:
	if is_pulled:
		$lever/pulled.visible = false
		$lever/unpulled.visible = true
		$tracks/pulled.visible = false
		$tracks/unpulled.visible = true
		is_pulled = false
	else:
		$lever/pulled.visible = true
		$lever/unpulled.visible = false
		$tracks/pulled.visible = true
		$tracks/unpulled.visible = false
		is_pulled = true

func _on_interactable_unfocused(interactor: Interactor) -> void:
	$pull_text.visible = false
