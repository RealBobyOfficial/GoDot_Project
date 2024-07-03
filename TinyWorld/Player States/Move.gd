extends State
class_name Move

@export var player: CharacterBody2D

var velocity: Vector2
var move_direction : Vector2

func Enter():
	player = get_tree().get_first_node_in_group("player")
	
#func Update(delta: float):
		
		
func Physics_Update(delta: float):
	var move_direction = Input.get_axis("left", "right")
	if move_direction:
		velocity.x = move_direction * move_speed
	else:
		velocity.x = move_toward(velocity.x, 0, 30)

	#move_and_slide()
	#if direction.length() < 300:
		#print(direction.length())
		#print("enemy now following")
		#Transitioned.emit(self, "Follow")
	
