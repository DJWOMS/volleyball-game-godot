extends RigidBody2D

func _ready():
	pass
	
	
func _on_fallzone_pl1_body_entered(body):
	if body is RigidBody2D:
		get_tree().change_scene("res://main.tscn")
		
		
func _on_fallzone_pl2_body_entered(body):
	if body is RigidBody2D:
		get_tree().change_scene("res://main.tscn")



