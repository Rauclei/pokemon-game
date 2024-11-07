extends Area2D

func _ready():
	pass  # Esta função está aqui, mas você não precisa usá-la neste caso

func _process(_delta):
	pass

func _on_body_entered(body):
	pass # Replace with function body.
	if body.name == "Player":
		body.coinscollected()  # Chama a função coletaMoeda do jogador
		coletado()

func coletado():
	queue_free()  # Remove o objeto da cena
