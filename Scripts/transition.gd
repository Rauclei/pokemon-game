extends CanvasLayer


@onready var color_rect = $ColorRect

func change_scene(path, _delay = 2.5):
	var scene_transiton = get_tree().create_tween()
	scene_transiton.tween_property(color_rect,"threshold", 1.0, 0.5)
	await scene_transiton.finished
	assert(get_tree().change_scene_to_file(path) == OK)
