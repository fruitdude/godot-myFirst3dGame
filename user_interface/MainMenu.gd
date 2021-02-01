extends Control


onready var video_player = get_node("VideoPlayer")


func _on_VideoPlayer_finished() -> void:
	video_player.play()