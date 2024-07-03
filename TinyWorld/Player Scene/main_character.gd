class_name Player
extends CharacterBody2D

#@onready 
#var animations = $animations


@onready var player_state_machine = $Player_StateMachine

func _read() -> void:
	player_state_machine.init(self)
	
func _unhandled_input(event: InputEvent) -> void:
	player_state_machine.process_input(event)
	
func _physics_process(delta: float) -> void:
	player_state_machine.process_physics(delta)
	
func _process(delta: float) -> void:
	player_state_machine.process_frame(delta)	

