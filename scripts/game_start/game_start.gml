function game_start(){
	screen = screen_game
	ping_timer = current_time
	ping_out_timer = current_time
	current_card = -1
	hand_init()
	calculate_turf()
}