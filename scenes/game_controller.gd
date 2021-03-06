extends Node

const FILE_PATH = "user://game.data";

var best_score = 0 setget set_bestscore;

func _ready():
	get_bestscore()
	pass
	
func save_bestscore():
	var file = File.new();
	file.open(FILE_PATH, File.WRITE)
	file.store_var(best_score);
	file.close();
	pass
	
func get_bestscore():
	var file = File.new();
	if not file.file_exists(FILE_PATH):
		return
	
	file.open(FILE_PATH, File.READ)
	best_score = file.get_var();
	file.close();
	pass

func set_bestscore(new_score):
	best_score = new_score;
	save_bestscore();
	pass
