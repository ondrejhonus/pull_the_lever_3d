extends Node

var is_pulled = false
var current_level = 1

var level_sentence
var sentences = [
	["Adolf Hitler", "Osama Bin Laden"], # 1
	["4 children with cancer", "a scientist that cures cancer"] # 2
	]
	
var sentence = "Let the train run over %s, or pull the lever and kill %s" % sentences[current_level-1]
var time_elapsed = 0
# Here you basically set how many people are on which track on a level
# One index is one level
# Track one
var count_ppl_one = [
	1, # 1
	4  # 2
	]
# Track two
var count_ppl_two = [
	1, # 1
	1  # 2
	]
