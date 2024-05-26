extends CharacterBody2D


const MoveSpeed = 250
const MaxSpeed = 50
const JUMP_VELOCITY = -400

var coyote_time = 0.1
var coyote_time_counter = 0

const up = Vector2(0,-1)

#const gravity = 15


var motion = Vector2()

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	pass

func _physics_process(delta):

	motion.y -= gravity
	velocity.y += gravity * delta*0.7
	
	
	if is_on_floor():
		coyote_time_counter = coyote_time
		$PJ/Anim.play("asd")
	else:
		coyote_time_counter -= delta
		

	if Input.is_action_just_pressed("Saltar") and coyote_time_counter > 0:
		velocity.y = JUMP_VELOCITY
		coyote_time_counter = 0
		
	if  Input.is_action_just_pressed("Izquierda"):
		$PJ.flip_h = true
	elif  Input.is_action_just_pressed("derecha"):
		$PJ.flip_h = false
		
		
		
	var direction = Input.get_axis("Izquierda", "derecha")
	if direction:
		velocity.x = direction * MoveSpeed
	else:
		velocity.x = move_toward(velocity.x, 0, MoveSpeed)

	move_and_slide()




func _on_animation_player_animation_finished(anim_name):
	$PJ/Anim.play("idle")

