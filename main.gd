extends "res://scripts/SceneBase.gd"


func _ready():
	$AudioStreamPlayer.play()
	

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func _on_Ball_fall_pl_1():
	player_position()


func _on_Ball_fall_pl_2():
	player_position()
