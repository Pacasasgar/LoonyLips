extends Control

var player_words = []
onready var PlayerText = $VBoxContainer/HBoxContainer/PlayerText
onready var DisplayTextKaelthas = $VBoxContainer/DisplayTextKaelthas

#APUNTES / CÓDIGO INICIAL
#func _ready():
#	print ("Fenomelor!")
#
#	#get_node("DisplayTextKaelthas").text = "Fenomelor!"
#	#una altre manera de fer el mateix:
#	#$DisplayTextKaelthas.text = "Fenomelor? Really?"
#
#	#Aixó busca els 'nodes' fills amb el nom que indiquem. Però han de ser fills directes.
#	#Edit1: Amb la estructura de 'nodes' actual, el codi no troba 'DisplayTextKaelthas'. Ho hem de fer així:
#	$VBoxContainer/DisplayTextKaelthas.text = "Fenomelor? Really?" 
#	#Edit2: Amb la variable genèrica que tenim ara 'DisplayTextKaelthas', no cal posar tota la ruta:
#	DisplayTextKaelthas.text = "Fenomelor? Really?"

#func _on_LineEdit_text_entered(new_text):
#	update_DisplayTextKealthas(new_text)
#
#func _on_TextureButton_pressed():
#	var playerWords = PlayerText.text
#	update_DisplayTextKealthas(playerWords)
#
#func update_DisplayTextKealthas(words):
#	DisplayTextKaelthas.text = words
#	PlayerText.clear()

func _on_PlayerText_text_entered(new_text):
	add_to_player_words()
	
func _on_TextureButton_pressed():
	add_to_player_words()

func add_to_player_words():
	player_words.append(PlayerText.text)
	
func is_story_done():
	return player_words.size() == prompts.size()
