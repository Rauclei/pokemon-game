extends Control


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/level.tscn")
	


func _on_quit_pressed() -> void:
	get_tree().quit()