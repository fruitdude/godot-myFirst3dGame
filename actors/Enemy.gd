extends Area



func _on_body_entered(body: Node) -> void:
	get_tree().change_scene("res://user_interface/DeathScreen.tscn")