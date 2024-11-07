extends CanvasLayer

var coinscollected = 0

func _ready():
	$coincount.text= "Fire: " + str(coinscollected)


func _on_item_l_2_body_entered(_body: Node2D) -> void:
	coinscollected = coinscollected + 1
	$coincount.text= "Fire: " + str(coinscollected)
