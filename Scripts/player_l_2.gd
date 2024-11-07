extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -450.0
@onready var sprite: AnimatedSprite2D = $Sprite


var gravity = 980
var pontuacao: int = 0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		
	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	velocity.x = SPEED
	
	# Animações baseadas no estado de movimento
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			sprite.play ("idle")
		else:
			sprite.play("run")
	elif velocity.y > 0:
		sprite.play("fall")
	else:
		sprite.play("jump")
	
	move_and_slide()
	
func coinscollected():
	# Incrementa a pontuação
	pontuacao += 1
	
	
	
	
	
