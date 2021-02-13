extends Node2D


func _ready():
	$AudioStreamPlayer.play()
	

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func _on_NewBall_fall_pl_1():
	#for child in $NewBall.get_children():
	#	child.queue_free()
	get_node("NewBall").queue_free()
	#$NewBall.position.x = 738
	print('MAin')


func _on_NewBall_fall_pl_2():
	$NewBall.set_mode(1)
	$NewBall.position.x = 738
	print('MAin222')
