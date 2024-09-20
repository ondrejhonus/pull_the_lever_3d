extends Label3D

var time_left = 10

func _process(delta: float) -> void:
	if time_left >= 0:
		time_left -= delta
		$RichTextLabel.text = " The train arrives in %d seconds" % [time_left]
	else:
		$RichTextLabel.text = ""
		
