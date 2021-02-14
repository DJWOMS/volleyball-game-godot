extends Node


func _ready():
	$AudioStreamPlayer.play()
	

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func player_position():
	$Player2.position.x = 250
	$Player2.position.y = 340
	$Player.position.x = 750
	$Player.position.y = 340
