extends Node2D

@onready var english = "The pretty \n and \n tragic \n Flor's story"
@onready var spanish = "La bella \n y \n trágica \n historia de Flor"

@export var Next : String

func _ready():
	Curtain.get_node("AnimationPlayer").play("FadeOut")
	Variables.Spanish = false
	if Variables.Spanish:
		$Title.text = spanish
	else:
		$Title.text = english

func _process(delta):
	
	if Input.is_action_just_released("Language"):
		Variables.Spanish = !Variables.Spanish
		if Variables.Spanish:
			$Title.text = spanish
		else:
			$Title.text = english
	
	if Input.is_action_just_released("Space"):
		Curtain.get_node("AnimationPlayer").play("FadeIn")
	
	if Variables.FadeInFinish:
		Variables.FadeInFinish = false
		get_tree().change_scene_to_file(Next)
