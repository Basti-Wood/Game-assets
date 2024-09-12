extends Control

# Explicitly cast the loaded scene as a PackedScene
var node: PackedScene = preload("res://recource/compositions/graph_node.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	# Ensure node is a valid PackedScene and instance it
	if node:
		var nde = node.instantiate()
		$GraphEdit.add_child(nde)
