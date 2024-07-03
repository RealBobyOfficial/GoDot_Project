extends State
class_name Follow

var direction: Vector2
@export var enemy: CharacterBody2D
@export var enemy_move_speed := 50.0
var player: CharacterBody2D

func Enter():
	player = get_tree().get_first_node_in_group("player")
	
func Physics_Update(delta: float):
	
	print("player position", player.global_position)
	print("enemy position",  enemy.global_position)
	var direction = player.global_position - enemy.global_position
	print(direction)
	
	if direction.length() > 25:
		print("its over 65")
		enemy.velocity = direction.normalized() * enemy_move_speed
		print ("enemy velocity is", enemy.velocity)

	else:
		enemy.velocity = Vector2()

	if direction.length() > 300:
		print("enemy now idle")
		Transitioned.emit(self, "Idle")
