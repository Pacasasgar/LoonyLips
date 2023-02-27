extends Control

func _ready():
	print ("Fenomelor!")
	
	#get_node("DisplayTextKaelthas").text = "Fenomelor!"
	#una altre manera de fer el mateix:
	#$DisplayTextKaelthas.text = "Fenomelor? Really?"
	
	#Aixó busca els 'nodes' fills amb el nom que indiquem. Però han de ser fills directes.
	#Amb la estructura de 'nodes' actual, el codi no troba 'DisplayTextKaelthas'. Ho hem de fer així:
	$VBoxContainer/DisplayTextKaelthas.text = "Fenomelor? Really?" 

func _on_LineEdit_text_entered(new_text):
	update_DisplayTextKealthas(new_text)
	
func update_DisplayTextKealthas(words):
	$VBoxContainer/DisplayTextKaelthas.text = words
	$VBoxContainer/LineEdit.clear()
