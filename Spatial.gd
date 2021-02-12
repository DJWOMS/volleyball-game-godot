extends KinematicBody2D
signal hit

var velocity = Vector2(0, 0)
export var SPEED = 200
export var JUMPFORCE = -800
const GRAVITY = 35
var screen_size



func _ready():
	screen_size = get_viewport_rect().size


func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$PlayerSprite.play("walk")
		#$AudioStreamPlayer.play()
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
	position.x = clamp(position.x, 590, screen_size.x)



func _on_Ball_body_entered(body):
	$HitBall.play()
	print("sdd")
