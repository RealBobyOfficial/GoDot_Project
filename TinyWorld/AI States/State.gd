class_name State
extends Node


@export var animation_name: String

@export var move_speed: float = 400

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

## Hold a reference to the parent so that it can be controlled by the state
var parent: Player

func Enter() -> void:
	parent.animations.play(animation_name)

func Exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	print("this runs")
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
