extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CanvasLayer/HBoxContainer/punto.text=str(Global.score)


func _on_area_2d_area_entered(area):
	Global.score=0
	get_tree().change_scene_to_file("res://Scenes/primer_nivel.tscn")


func _on_area_2d_body_entered(body):
	$Player/Camera2D/AnimationPlayer.play("camera")


func _on_area_2d_body_exited(body):
	$Player/Camera2D/AnimationPlayer.play_backwards("camera")


func _on_area_2d_2_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/Segundo_nivel.tscn")
