extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Play.grab_focus()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/primer_nivel.tscn")

func _on_exit_pressed():
	get_tree().quit()


