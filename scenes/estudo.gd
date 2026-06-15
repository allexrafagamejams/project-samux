extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(calcular_soma())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func calcular_soma() -> int:
	return 1+2

func cumprimentar(nome:String) -> void:
	print("Olá ", nome);
