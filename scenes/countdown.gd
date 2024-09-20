extends Label3D

var time_left = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time_left -= delta
	$RichTextLabel.text = "The train arrives in %d seconds" % [time_left]
	pass
