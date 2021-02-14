extends CanvasLayer


func _ready():
	pass


func _process(delta):
	$Count.text = "{pl_1}:{pl_2}".format(
		{"pl_1": GlobalScore.score_pl_1, "pl_2": GlobalScore.score_pl_2}
	)

func _on_Ball_fall_pl_1():
	GlobalScore.score_pl_2 += 1


func _on_Ball_fall_pl_2():
	GlobalScore.score_pl_1 += 1
