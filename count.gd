extends Label


var score_pl_1 = 0
var score_pl_2 = 0


func _ready():
	text = "{pl_1}:{pl_2}".format({"pl_1": score_pl_1, "pl_2": score_pl_2})
