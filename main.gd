extends Node2D


func _ready():
	$AudioStreamPlayer.play()
	

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()