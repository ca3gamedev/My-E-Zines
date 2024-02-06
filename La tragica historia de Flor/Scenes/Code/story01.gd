extends Node2D

@export var MaxPages : int
@export var CurrentPage : int
@export var Next : int

@export var TextosSpanish : Array[Label]
@export var TextosEnglish : Array[Label]
@export var TextosJapanese : Array[Label]

func _ready():
	Curtain.get_node("AnimationPlayer").play("FadeOut")
	
	HideTexts()
	
	match(Variables.Language):
		"SPANISH" : 
			for i in TextosSpanish:
				i.show()
		"ENGLISH" : 
			for i in TextosEnglish:
				i.show()
		"JAPANESE" : 
			for i in TextosJapanese:
				i.show()

func HideTexts():
	for i in TextosSpanish:
		i.hide()
	for i in TextosEnglish:
		i.hide()
	for i in TextosJapanese:
		i.hide()

func LEFT():
	if CurrentPage > 0:
		CurrentPage -= 1
		$Pages.SetTarget(str(CurrentPage))

func RIGHT():
	if CurrentPage < MaxPages -1:
		CurrentPage += 1
		$Pages.SetTarget(str(CurrentPage))


func _on_continue_pressed():
	Variables.current = Next
	Curtain.get_node("AnimationPlayer").play("FadeIn")
