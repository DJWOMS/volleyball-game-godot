extends KinematicBody2D
signal hit

export var speed = 400 
var velocity = Vector2(0, 0)
const SPEED = 200
const GRAVITY = 35
const JUMPFORCE = -800
var screen_size



func _ready():
	screen_size = get_viewport_rect().size
	#hide()


func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$PlayerSprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$PlayerSprite.play("walk")
	else:
		$PlayerSprite.play('idle')
		
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMPFORCE
	
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x ,0, 0.2)
	
	""" if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	if velocity.x != 0:
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_v = false
		$AnimatedSprite.flip_h = velocity.x < 0
	elif velocity.y != 0:
		$AnimatedSprite.animation = "jump"
		$AnimatedSprite.flip_v = velocity.y > 0 """
