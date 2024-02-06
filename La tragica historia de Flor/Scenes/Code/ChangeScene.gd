extends Node

@export var scene : Array


func ChangeScene():
	var Next = scene[Variables.current]
	Variables.FadeInFinish = false
	get_tree().change_scene_to_file(Next)
