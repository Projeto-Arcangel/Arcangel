extends Control

signal back_pressed
signal logout_requested

func _ready():
	$MarginContainer/VBoxContainer/HBoxContainer/VoltarButton.pressed.connect(_on_voltar_pressed)
	$MarginContainer/VBoxContainer/ExitButton.pressed.connect(_on_exit_pressed)
	$MarginContainer/VBoxContainer/ButtonList/PerfilButton.pressed.connect(_on_perfil_pressed)
	$MarginContainer/VBoxContainer/ButtonList/ContaButton.pressed.connect(_on_conta_pressed)
	$MarginContainer/VBoxContainer/ButtonList/PreferenciasButton.pressed.connect(_on_preferencias_pressed)
	$MarginContainer/VBoxContainer/ButtonList/SonsButton.pressed.connect(_on_sons_pressed)
	
func _on_exit_pressed():
	emit signal("logout_requested")
	
