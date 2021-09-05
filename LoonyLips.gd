extends Control

func _ready():
	var prompts = ["Yann", "Minions", "greatest"]
	var story = "Once upon a time, %s watched %s and thought it was the %s movie of the past two decades"
	$VBoxContainer/DisplayText.text = story % prompts

func _text_entered(new_text):
	update_DisplayText(new_text)
	
func _on_Button_pressed():
	update_DisplayText($VBoxContainer/HBoxContainer/PlayerText.text)
	
func update_DisplayText(words):
	$VBoxContainer/DisplayText.text = words
	$VBoxContainer/HBoxContainer/PlayerText.clear()
