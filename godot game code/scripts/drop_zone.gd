extends Marker2D


func _draw():
	draw_circle(Vector2.ZERO, 100, Color.RED)

func deselect():
	modulate = Color.RED

func select():
	# Loop through all nodes in the "zone" group
	for c in get_tree().get_nodes_in_group("zone"):
		# Check if the node has the 'deselect' function
		if c.has_method("deselect"):
			c.deselect()
	modulate = Color.BLACK
