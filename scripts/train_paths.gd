extends PathFollow3D

func _process(delta: float) -> void:
	progress += 10 * delta
