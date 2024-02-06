extends Node2D

@export var Down : bool
@export var Idle : bool

@export var IsCover : bool

func _ready():
	NavBar()
	IsCover = true


func _on_animation_player_animation_finished(anim_name):
	Down = !Down
	Idle = true

func NavBar():
	if not Idle:
		return
	
	Idle = false
	
	if Down:
		$AnimationPlayer.play("In")
	else:
		$AnimationPlayer.play("Out")


func _on_hide_nav_bar_pressed():
	NavBar()

func _process(delta):
	if Variables.FadeInFinish:
		Variables.get_node("ChangeScene").ChangeScene()


func _on_start_pressed():
	Variables.current = 1
	Curtain.get_node("AnimationPlayer").play("FadeIn")


func _on_return_pressed():
	Variables.current = 0
	Curtain.get_node("AnimationPlayer").play("FadeIn")


func _on_español_pressed():
	Variables.Language = "SPANISH"
	Curtain.get_node("AnimationPlayer").play("FadeIn")


func _on_ehglish_pressed():
	Variables.Language = "ENGLISH"
	Curtain.get_node("AnimationPlayer").play("FadeIn")


func _on_nihongo_pressed():
	Variables.Language = "JAPANESE"
	Curtain.get_node("AnimationPlayer").play("FadeIn")
