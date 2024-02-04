extends Node2D

@export var MaxPages : int
@export var CurrentPage : int
@export var Next : String

func _ready():
	Curtain.get_node("AnimationPlayer").play("FadeOut")

func _process(delta):
	
	if CurrentPage > 0:
		if Input.is_action_just_released("LEFT"):
			CurrentPage -= 1
			$Pages.SetTarget(str(CurrentPage))
	if CurrentPage < MaxPages -1:
		if Input.is_action_just_released("RIGHT"):
			CurrentPage += 1
			$Pages.SetTarget(str(CurrentPage))
	
	if CurrentPage >= MaxPages -1:
		if Input.is_action_just_released("Space"):
			Curtain.get_node("AnimationPlayer").play("FadeOut")
			%Timer.start(1)


func _on_timer_timeout():
	get_tree().change_scene_to_file(Next)
