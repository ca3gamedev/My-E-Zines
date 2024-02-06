extends Node2D

@export var Next : String

func _ready():
	$Spanish.hide()
	$English.hide()
	$Japanese.hide()
	Curtain.get_node("AnimationPlayer").play("FadeOut")
	
	match(Variables.Language):
		"SPANISH" : $Spanish.show()
		"ENGLISH" : $English.show()
		"JAPANESE" : $Japanese.show()
