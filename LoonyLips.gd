extends Control


func _ready():
	print ("Fenomelor!")
	
	get_node("DisplayTextKaelthas").text = "Fenomelor!"
	#otra manera de hacer lo mismo:
	$DisplayTextKaelthas.text = "Fenomelor? Really?"
