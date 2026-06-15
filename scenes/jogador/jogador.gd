extends CharacterBody2D

var velocidade_do_jogador: float = 400.0;
var direcao_do_movimento: Vector2 = Vector2(0, 0);

func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	movimentar_jogador();
	
	


func movimentar_jogador() -> void:
	if Input.is_action_pressed("move_right"):
		direcao_do_movimento.x = 1;
	elif Input.is_action_pressed("move_left"):
		direcao_do_movimento.x = -1;
	else:
		direcao_do_movimento.x = 0
	
	if Input.is_action_pressed("move_up"):
		direcao_do_movimento.y = -1
	elif Input.is_action_pressed("move_down"):
		direcao_do_movimento.y = 1
	else:
		direcao_do_movimento.y = 0
	
	velocity = direcao_do_movimento.normalized() * velocidade_do_jogador
	move_and_slide();
