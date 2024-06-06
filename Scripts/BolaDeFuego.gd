class_name BolaDeFuego
extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	position.x += -5
	 


func _on_body_entered(body):
	if body is Personaje:
		queue_free()
