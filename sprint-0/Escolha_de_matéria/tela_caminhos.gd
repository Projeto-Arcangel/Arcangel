extends Control


func _ready():
	
	var fundo = ColorRect.new()
	fundo.color = Color("#1e1f28")  
	fundo.set_anchors_preset(Control.PRESET_FULL_RECT)  
	fundo.mouse_filter = Control.MOUSE_FILTER_IGNORE  
	add_child(fundo)  
	fundo.move_to_front() 
	move_child(fundo, 0)  
	
	
	if not has_node("ConteinerCentral/EstruturaPrincipal"):
		print("ERRO: Caminho não encontrado!")
		return
	
	
	$ConteinerCentral/EstruturaPrincipal.set_anchors_preset(Control.PRESET_FULL_RECT)
	
	
	var titulo = $ConteinerCentral/EstruturaPrincipal/Titulo
	titulo.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	titulo.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	titulo.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	titulo.add_theme_font_size_override("font_size", 36)
	
	
	var container = $ConteinerCentral/EstruturaPrincipal/ContainerOpcoes
	container.size_flags_horizontal = Control.SIZE_EXPAND
	container.size_flags_vertical = Control.SIZE_EXPAND
	container.alignment = BoxContainer.ALIGNMENT_CENTER
	container.add_theme_constant_override("separation", 20)
	
	
	for botao in container.get_children():
		if botao is Button:
			
			botao.custom_minimum_size = Vector2(300, 60)
			botao.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
			
			
			match botao.text:
				"Geografia":
					aplicar_estilo_botao(botao, Color("#72d082"))  
				"Filosofia":
					aplicar_estilo_botao(botao, Color("#d9d9d9"))  
				"Sociologia":
					aplicar_estilo_botao(botao, Color("#ead47f"))  
				"História":
					aplicar_estilo_botao(botao, Color("#6f574a"))  
				_:
					aplicar_estilo_botao(botao, Color("#6f574a"))
			
			# Conectar sinal
			botao.pressed.connect(_on_botao_pressed.bind(botao.text))

func aplicar_estilo_botao(botao: Button, cor_fundo: Color):
	
	var estilo_normal = StyleBoxFlat.new()
	
	
	estilo_normal.bg_color = cor_fundo
	
	
	estilo_normal.corner_radius_top_left = 30
	estilo_normal.corner_radius_top_right = 30
	estilo_normal.corner_radius_bottom_left = 30
	estilo_normal.corner_radius_bottom_right = 30
	
	
	estilo_normal.border_width_left = 2
	estilo_normal.border_width_top = 2
	estilo_normal.border_width_right = 2
	estilo_normal.border_width_bottom = 2
	estilo_normal.border_color = cor_fundo.darkened(0.2)
	
	
	estilo_normal.shadow_color = Color(0, 0, 0, 0.25)
	estilo_normal.shadow_size = 8
	estilo_normal.shadow_offset = Vector2(0, 4)
	
	
	var estilo_hover = StyleBoxFlat.new()
	estilo_hover.bg_color = cor_fundo.lightened(0.1)
	estilo_hover.corner_radius_top_left = 30
	estilo_hover.corner_radius_top_right = 30
	estilo_hover.corner_radius_bottom_left = 30
	estilo_hover.corner_radius_bottom_right = 30
	estilo_hover.border_width_left = 2
	estilo_hover.border_width_top = 2
	estilo_hover.border_width_right = 2
	estilo_hover.border_width_bottom = 2
	estilo_hover.border_color = cor_fundo.darkened(0.1)
	
	
	var estilo_pressed = StyleBoxFlat.new()
	estilo_pressed.bg_color = cor_fundo.darkened(0.2)
	estilo_pressed.corner_radius_top_left = 30  # Ajustei para 30 também
	estilo_pressed.corner_radius_top_right = 30
	estilo_pressed.corner_radius_bottom_left = 30
	estilo_pressed.corner_radius_bottom_right = 30
	estilo_pressed.border_width_left = 2
	estilo_pressed.border_width_top = 2
	estilo_pressed.border_width_right = 2
	estilo_pressed.border_width_bottom = 2
	estilo_pressed.border_color = cor_fundo.darkened(0.3)
	
	
	botao.add_theme_stylebox_override("normal", estilo_normal)
	botao.add_theme_stylebox_override("hover", estilo_hover)
	botao.add_theme_stylebox_override("pressed", estilo_pressed)
	
	
	botao.add_theme_color_override("font_color", Color.BLACK)
	botao.add_theme_color_override("font_hover_color", Color.BLACK)
	botao.add_theme_color_override("font_pressed_color", Color.BLACK)

func _on_botao_pressed(materia: String):
	print(materia + " selecionada!")
	
