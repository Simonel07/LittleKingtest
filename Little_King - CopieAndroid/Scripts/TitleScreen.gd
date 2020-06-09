extends Node2D


func _ready():
	$BackgroundMusic1.play()
	$MarginContainer/VBoxContainer/VBoxContainer/TextureButton.grab_focus()

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton.is_hovered() == true:
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton2.is_hovered() == true:
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton2.grab_focus()

func _on_TextureButton_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	
func _on_TextureButton2_pressed():
	get_tree().quit()

func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://Scenes/StageOne.tscn")


func _on_Start_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()


func _on_Exit_pressed():
	get_tree().quit()
