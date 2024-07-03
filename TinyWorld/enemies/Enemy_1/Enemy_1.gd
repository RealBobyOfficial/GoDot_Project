extends CharacterBody2D
class_name FlyingEnemy

@onready var Health = 10

func _physics_process(delta):
	move_and_slide()
	
	#if velocity.length() > 0:
		#print("enemy running animation")
		#$AnimationPlayer.play("run")
		
	if velocity.x > 0:
		pass
		$Sprite2D.flip_h = false
	else:
		pass
		$Sprite2D.flip_h = true

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Health -= 1
		print(Health)
		
	if Health <= 0:
		queue_free()
		
