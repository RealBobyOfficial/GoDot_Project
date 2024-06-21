extends CharacterBody2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $Sprite2D

const lines: Array[String] = [
	"Hey there!",
	"How are you doing?",
	"Want to hear some music?"
]

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	
func _on_interact():
	DialogManager.start_dialog(global_position, lines)
	#sprite.flip_h = true if interaction_area.get_overlapping_bodies()[0].global_position.x else f
	await DialogManager.dialog_finished
	print("test")
	$AudioStreamPlayer2D.play()
	
