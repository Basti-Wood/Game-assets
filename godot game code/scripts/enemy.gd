extends CharacterBody2D

var speed = 100
var player_chase = false
var player = null

func _physics_process(delta):
	if player_chase:
		# Calculate direction towards the player
		var direction = (player.position - position).normalize()
		# Move towards the player at a constant speed
		position += direction * speed * delta

func _on_detection_body_entered(body):
	# Start chasing the player when they enter detection
	player = body
	player_chase = true

func _on_detection_body_exited(body):
	# Stop chasing when the player exits detection
	player = null
	player_chase = false
