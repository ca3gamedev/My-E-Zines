extends Node2D

@export var current : int
@export var max_pics : int
@export var Next : int

func _ready():
	$Sprite.frame = 0
	Curtain.get_node("AnimationPlayer").play("FadeOut")


func _process(delta):
	
	%HP.value -= delta * current
	
	if Input.is_action_pressed("Z"):
		HIT(delta)


func HIT(delta):
	%HP.value += delta * 30
	
	if %HP.value > 99:
		current += 1
		%HP.value = 0
		
		if current < max_pics:
			%Sprite.frame = current
		else:
			Variables.current = Next
			Variables.get_node("ChangeScene").ChangeScene()
