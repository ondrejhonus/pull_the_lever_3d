extends Node

var is_pulled = false
var current_level = 0
var sentence
var time_elapsed = 0

var sentences = [
	["4 people", "1 person"], # 1
	["1 person", "all your money"], # 2
	["5 people", "your mum"], # 3
	["you", "4 people"], # 4
	["grandma", "a scientist about to cure cancer"] # 5
	]
	

# Here you basically set how many people are on which track on a level
# One index is one level
# If you want a specific item, set an ID for it thats a higher number than lets say 10 and then work with that
# eg. moneyID = 69
# Track one
var count_ppl_one = [
	4, # 1
	1, # 2
	5, # 3
	1, # 4
	1, # 5
	]
# Track two
var count_ppl_two = [
	1, # 1
	69,  # 2
	1, # 3
	4, # 4
	1, # 5
	]
