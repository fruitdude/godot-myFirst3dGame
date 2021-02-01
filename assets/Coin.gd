extends Area


var score: = 100


onready var anim_player = get_node("AnimationPlayer")


func _on_body_entered(body: Node) -> void:
	picked()
	
	
func picked() -> void:
	anim_player.play("fade_out")
	PlayerData.score += score