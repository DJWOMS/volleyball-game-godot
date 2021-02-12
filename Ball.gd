extends RigidBody2D

func _ready():
	pass # Replace with function body.


func _on_fallzone_body_entered(body):
	if body is RigidBody2D:
		print(body)
		get_tree().change_scene("res://Start.tscn")
