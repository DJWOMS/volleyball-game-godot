extends KinematicBody2D
signal hit


var velocity = Vector2(0, 0)
export var SPEED = 200
const GRAVITY = 35
const JUMPFORCE = -800
var screen_size



func _ready():
	screen_size = get_viewport_rect().size
	#hide()


func _process(_delta):
	if Input.is_action_pressed("pl_2_right"):
		velocity.x = SPEED
		$PlayerSprite.play("walk")
	elif Input.is_action_pressed("pl_2_left"):
		velocity.x = -SPEED
		$PlayerSprite.play("walk")
	else:
		$PlayerSprite.play('idle')
		
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("pl_2_up") and is_on_floor():
		velocity.y = JUMPFORCE
	
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x ,0, 0.2)
