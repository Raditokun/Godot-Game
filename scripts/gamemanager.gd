extends Node
@onready var scorenum: Label = $scorenum

var score = 0

func add_point():
	score += 1
	scorenum.text = "You are " + str(score) + "% Gay"
