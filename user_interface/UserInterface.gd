extends Control


onready var score: Label = get_node("ScoreLabel")


func _ready() -> void:
	PlayerData.connect("score_updated", self, "update_interface")
	update_interface()
	
	
func update_interface() -> void:
	score.text = "%s" % PlayerData.score