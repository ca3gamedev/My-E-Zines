extends Node

func _ready():
	if Variables.Spanish:
		%Spanish.show()
		%English.hide()
	else:
		%English.show()
		%Spanish.hide()

func _process(delta):
	if Input.is_action_just_released("Language"):
		Variables.Spanish = !Variables.Spanish
		
		if Variables.Spanish:
			%Spanish.show()
			%English.hide()
		else:
			%English.show()
			%Spanish.hide()
