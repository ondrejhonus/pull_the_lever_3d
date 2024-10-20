extends Node

var is_pulled = false
var current_level = 0
var sentence

var sentences = [
	["4 people", "1 person"], # 1
	["1 person", "all your money"], # 2
	["5 people", "your mum"], # 3
	["you", "4 people"] # 4
	]
	
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
