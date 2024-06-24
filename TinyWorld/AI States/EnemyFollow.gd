extends State
class_name Follow

var a = Vector2 (2,5)
@export var enemy: CharacterBody2D
@export var move_speed := 80.0

var player: CharacterBody2D

func Enter():
	player = get_tree().get_first_node_in_group("player")

func Physics_Update(delta: float):
	var direction = player.global_position - enemy.global_position
	
	if direction.length() > 65:
		enemy.velocity = direction.normalized() * move_speed
		
	if direction.length() > 150:
		Transitioned.emit(self, "Idle")
		
	else:
		enemy.velocity = Vector2()

	
