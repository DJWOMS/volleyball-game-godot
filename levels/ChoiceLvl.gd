extends Control


func _ready():
	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://main.tscn")


func _on_lvl2_pressed():
	get_tree().change_scene("res://levels/Level2.tscn")
