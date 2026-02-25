extends Control


func _ready():
	# ===== FUNDO DA TELA COM COLORRECT =====
	var fundo = ColorRect.new()
	fundo.color = Color("#1e1f28")  # Sua cor aqui
	fundo.set_anchors_preset(Control.PRESET_FULL_RECT)  # Ocupa a tela toda
	fundo.mouse_filter = Control.MOUSE_FILTER_IGNORE  # Deixa os cliques passarem
	add_child(fundo)  # Adiciona à cena
	fundo.move_to_front()  # Garante que fica atrás (opcional, move para frente)
	move_child(fundo, 0)  # Move para o início (fica atrás de tudo)
	
	# ===== VERIFICAR SE OS NÓS EXISTEM =====
	if not has_node("ConteinerCentral/EstruturaPrincipal"):
		print("ERRO: Caminho não encontrado!")
		return
	
	# ===== FULL RECT NA ESTRUTURA PRINCIPAL =====
	$ConteinerCentral/EstruturaPrincipal.set_anchors_preset(Control.PRESET_FULL_RECT)
	
	# ===== TÍTULO =====
	var titulo = $ConteinerCentral/EstruturaPrincipal/Titulo
	titulo.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	titulo.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	titulo.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	titulo.add_theme_font_size_override("font_size", 36)
	
	# ===== CONTAINER =====
	var container = $ConteinerCentral/EstruturaPrincipal/ContainerOpcoes
	container.size_flags_horizontal = Control.SIZE_EXPAND
	container.size_flags_vertical = Control.SIZE_EXPAND
	container.alignment = BoxContainer.ALIGNMENT_CENTER
	container.add_theme_constant_override("separation", 20)
	
	# ===== ESTILIZAR CADA BOTÃO =====
	for botao in container.get_children():
		if botao is Button:
			# Tamanho mínimo
			botao.custom_minimum_size = Vector2(300, 60)
			botao.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
			
			# Aplicar estilo baseado no texto do botão
			match botao.text:
				"Geografia":
					aplicar_estilo_botao(botao, Color("#72d082"))  # verde
				"Filosofia":
					aplicar_estilo_botao(botao, Color("#d9d9d9"))  # Cinza
				"Sociologia":
					aplicar_estilo_botao(botao, Color("#ead47f"))  # Amarelo
				"História":
					aplicar_estilo_botao(botao, Color("#6f574a"))  # Marrom
				_:
					aplicar_estilo_botao(botao, Color("#6f574a"))
			
			# Conectar sinal
			botao.pressed.connect(_on_botao_pressed.bind(botao.text))

func aplicar_estilo_botao(botao: Button, cor_fundo: Color):
	# ===== ESTILO NORMAL =====
	var estilo_normal = StyleBoxFlat.new()
	
	# Cor de fundo
	estilo_normal.bg_color = cor_fundo
	
	# Cantos arredondados
	estilo_normal.corner_radius_top_left = 30
	estilo_normal.corner_radius_top_right = 30
	estilo_normal.corner_radius_bottom_left = 30
	estilo_normal.corner_radius_bottom_right = 30
	
	# Borda
	estilo_normal.border_width_left = 2
	estilo_normal.border_width_top = 2
	estilo_normal.border_width_right = 2
	estilo_normal.border_width_bottom = 2
	estilo_normal.border_color = cor_fundo.darkened(0.2)
	
	# Sombra
	estilo_normal.shadow_color = Color(0, 0, 0, 0.25)
	estilo_normal.shadow_size = 8
	estilo_normal.shadow_offset = Vector2(0, 4)
	
	# ===== ESTILO HOVER =====
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
	
	# ===== ESTILO PRESSED =====
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
	
	# ===== APLICAR ESTILOS AO BOTÃO =====
	botao.add_theme_stylebox_override("normal", estilo_normal)
	botao.add_theme_stylebox_override("hover", estilo_hover)
	botao.add_theme_stylebox_override("pressed", estilo_pressed)
	
	# ===== COR DO TEXTO =====
	botao.add_theme_color_override("font_color", Color.BLACK)
	botao.add_theme_color_override("font_hover_color", Color.BLACK)
	botao.add_theme_color_override("font_pressed_color", Color.BLACK)

func _on_botao_pressed(materia: String):
	print(materia + " selecionada!")
	
