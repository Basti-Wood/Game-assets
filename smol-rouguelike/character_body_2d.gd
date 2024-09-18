extends CharacterBody2D
class_name Character, "res://art/AdventureBegins_DemoVersion/Adv&Adv_demo.png"


const FRICTION: float = 0,15

@export
var acceleration: int = 40
var max_speed: int = 100

var mov_dir: Vector2 = Vector2.ZERO
var velo: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velo = move_and_slide(velo)
	velo = lerp(velo, Vector2.ZERO, FRICTION)

func move() -> void:
	mov_direction = mov_direction.normalized()
	velocity += mov_direction * acceleration
	
