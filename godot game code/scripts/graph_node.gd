extends GraphNode



func _ready():
	set_slot(0, true, 0, Color.WHITE, true, 0, Color.GREEN)
	pass

func _on_button_pressed() -> void:
	queue_free()
