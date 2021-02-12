extends Node

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("start"):
		get_tree().change_scene("res://main.tscn")
