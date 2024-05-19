extends CharacterBody2D

@export var speed : float

func _process(delta):
	motion_ctrl()
	if not Input.is_action_pressed("ui_accept"):
		$PJ/AnimationPlayer.play("asd")


func motion_ctrl() -> void:
	velocity.x = Global.get_axis().x * speed
	velocity.y = Global.get_axis().y * -speed
	move_and_slide()

