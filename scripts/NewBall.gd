extends RigidBody2D
signal fall_pl_1
signal fall_pl_2

var reset = false

func _ready():
	if GlobalScore.player_turn == 2:
		position.x = 262
	elif GlobalScore.player_turn == 1:
		position.x = 738

		
func _on_fallzone_pl1_body_entered(body):
	if body is RigidBody2D:
		$Goal.play()
		emit_signal("fall_pl_1")
		GlobalScore.player_turn = 2
		queue_free()
		#get_tree().change_scene("res://main.tscn")
		
		
func _on_fallzone_pl2_body_entered(body):
	if body is RigidBody2D:
		$Goal.play()
		emit_signal("fall_pl_2")
		GlobalScore.player_turn = 1
		#get_tree().change_scene("res://main.tscn")


func _on_Ball_body_entered(body):
	$Bit.play()
