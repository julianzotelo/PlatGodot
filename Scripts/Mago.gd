extends CharacterBody2D


# Referencia a la bola de fuego
# Tiempo entre disparos
@export var fireball_cooldown = 0.5
var can_shoot = true
#"res://Scenes/BolaDeFuego.tscn"
const BOLA_DE_FUEGO = preload("res://Scenes/BolaDeFuego.tscn")
@onready var timer = $Timer

func _ready():
	timer.connect("timeout", _on_timer_timeout)
	timer.start()
	
func shoot_fireball():
	can_shoot = false
	timer.start()
	var fireball = BOLA_DE_FUEGO.instantiate()
	fireball.position = $Sprite2D.position # Ajusta la posición según sea necesario
	add_child(fireball)
	
func _on_timer_timeout():
		can_shoot = true
		timer.wait_time= 0.5
		
		shoot_fireball()

