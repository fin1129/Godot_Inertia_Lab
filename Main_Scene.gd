extends Node2D

@onready var transition = $Player_Controller/UI/Transition

func _ready():
	transition.play("in")

func _process(delta):
	reset()

func reset():
	if Input.is_action_just_pressed('reset'):
		get_tree().reload_current_scene()
