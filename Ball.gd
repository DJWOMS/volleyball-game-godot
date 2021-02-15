extends RigidBody2D
signal fall_pl_1
signal fall_pl_2

export (int) var engine_thrust = 0

var reset = false
var thrust = Vector2()


func _ready():
	if GlobalScore.player_turn == 2:
		position.x = 262
	elif GlobalScore.player_turn == 1:
		position.x = 738


func _integrate_forces(state):
	#thrust = Vector2(engine_thrust, 50)
	set_applied_force(thrust.rotated(rotation))
	
	var xform = state.get_transform()
	if GlobalScore.player_turn == 2 and reset:
		xform.origin.x = 262
		xform.origin.y = 50
	elif GlobalScore.player_turn == 1 and reset:
		xform.origin.x  = 738
		xform.origin.y = 50
	state.set_transform(xform)
	reset = false
	#apply_impulse(Vector2(), Vector2())
		
		
func _on_fallzone_pl1_body_entered(_body):
	if _body is RigidBody2D:
		$Goal.play()
		GlobalScore.player_turn = 2
		emit_signal("fall_pl_1")
		reset = true
		
		
func _on_fallzone_pl2_body_entered(_body):
	if _body is RigidBody2D:
		$Goal.play()
		emit_signal("fall_pl_2")
		GlobalScore.player_turn = 1
		reset = true


func _on_Ball_body_entered(_body):
	$Bit.play()


func _on_Ball_body_entered_lvl2(body):
	$Bit.play()

