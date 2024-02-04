extends Node2D

var target

func _ready():
	target = get_node("0").global_position

func SetTarget(new_target):
	target = get_node(new_target).global_position

func _process(delta):
	%Camera2D.global_position = %Camera2D.global_position.slerp(target, 0.1)
