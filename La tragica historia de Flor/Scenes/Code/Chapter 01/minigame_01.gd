extends Node2D

@export var current : int
@export var max_pics : int
@export var Next : String

func _ready():
	$Sprite.frame = 0

func _process(delta):
	
	%HP.value -= delta * current
	
	if Input.is_action_just_released("Space"):
		%HP.value += 5
		
		if %HP.value > 99:
			current += 1
			%HP.value = 0
			
			if current < max_pics:
				%Sprite.frame = current
			else:
				get_tree().change_scene_to_file(Next)
