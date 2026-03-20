extends Node2D

const SPEED = 50
var DIRECTION = 1
@onready var case_left: RayCast2D = $CaseLeft
@onready var case_right: RayCast2D = $CaseRight
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	if case_right.is_colliding():
		DIRECTION = -1
		animated_sprite.flip_h = true
	if case_left.is_colliding():
		DIRECTION = 1
		animated_sprite.flip_h = false
	position.x += DIRECTION * SPEED * delta
