extends "res://scripts/PlayerBase.gd"
signal hit_player_2


func _ready():
	position.x = 250
	position.y = 340
	screen_size = get_viewport_rect().size


func _process(_delta):
	if Input.is_action_pressed("pl_2_right"):
		velocity.x = SPEED
		$PlayerSprite.play("walk")
		if not $Go.playing and is_on_floor():
			$Go.play()
	elif Input.is_action_pressed("pl_2_left"):
		velocity.x = -SPEED
		$PlayerSprite.play("walk")
		if not $Go.playing and is_on_floor():
			$Go.play()
	else:
		$PlayerSprite.play('idle')
		
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("pl_2_up") and is_on_floor():
		velocity.y = JUMPFORCE
	
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x ,0, 0.2)
	position.x = clamp(position.x, 0, 435)

