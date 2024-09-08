extends CharacterBody2D

const speed = 100

var current_dir = "none"

func _ready():
	$AnimatedSprite2D.play("front idle")




func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):
	var true_speed = speed
	
	if Input.is_action_pressed("run"):
		true_speed = speed * 1.5
	
	if Input.is_action_pressed("right"):
		current_dir = "right"
		play_anim(1)
		velocity.x = true_speed
		velocity.y = 0
	elif Input.is_action_pressed("left"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -true_speed
		velocity.y = 0
	elif Input.is_action_pressed("up"):
		current_dir = "up"
		play_anim(1)
		velocity.x = 0
		velocity.y = -true_speed
	elif Input.is_action_pressed("down"):
		current_dir = "down"
		play_anim(1)
		velocity.x = 0
		velocity.y = true_speed
	else:
		play_anim(0)
		velocity.x = 0
		velocity.y = 0
	move_and_slide()

func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		if movement == 1:
			anim.play("side walk")
		elif movement == 0:
			anim.play("side idle")
			
	if dir == "left":
		anim.flip_h = true
		if movement == 1:
			anim.play("side walk")
		elif movement == 0:
			anim.play("side idle")
			
	if dir == "down":
		anim.flip_h = false
		if movement == 1:
			anim.play("front walk")
		elif movement == 0:
			anim.play("front idle")
			
	if dir == "up":
		anim.flip_h = true
		if movement == 1:
			anim.play("back walk")
		elif movement == 0:
			anim.play("back idle")
