extends CanvasLayer

var coinscollected = 0

func _ready():
	$coincount.text= "Cherrys: " + str(coinscollected)


func _on_item_body_entered(_body: Node2D) -> void:
	coinscollected = coinscollected + 1
	$coincount.text= "Cherrys: " + str(coinscollected)
