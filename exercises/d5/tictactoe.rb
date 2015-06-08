def print_board(game_board)
	puts "#{game_board[0][0]} | #{game_board[0][1]} | #{game_board[0][2]}"
	puts "__+___+__"
	puts "#{game_board[1][0]} | #{game_board[1][1]} | #{game_board[1][2]}"
	puts "__+___+__"
	puts "#{game_board[2][0]} | #{game_board[2][1]} | #{game_board[2][2]}"
end

def check_horizontal(game_board, curr_player)
	if ((game_board[0][0] == game_board[0][1]) && 
		(game_board[0][1] == game_board[0][2])) && 
		(game_board[0][1] == "O" || game_board[0][1] == "X") || 
		((game_board[1][0] == game_board[1][1]) && 
		(game_board[1][1] == game_board[1][2])) && 
		(game_board[1][1] == "O" || game_board[1][1] == "X") ||
		((game_board[2][0] == game_board[2][1]) && 
		(game_board[2][1] == game_board[2][2])) && 
		(game_board[2][1] == "O" || game_board[2][1] == "X")
		if curr_player == true 
			puts "Player 1 wins!"
		else
			puts "Player 2 wins!"
		end
		return true;
	else
		return false;	
	end
end

def check_vertical(game_board, curr_player)
	if ((game_board[0][0] == game_board[1][0]) && 
		(game_board[1][0] == game_board[2][0])) && 
		(game_board[1][0] == "O" || game_board[1][0] == "X") || 
		((game_board[0][1] == game_board[1][1]) && 
		(game_board[1][1] == game_board[2][1])) && 
		(game_board[1][1] == "O" || game_board[1][1] == "X")||
		((game_board[0][2] == game_board[1][2]) && 
		(game_board[1][2] == game_board[2][2])) && 
		(game_board[1][2] == "O" || game_board[1][2] == "X")
		if curr_player == true 
			puts "Player 1 wins!"
		else
			puts "Player 2 wins!"
		end
		return true;
	else
		return false;	
	end
end

def check_diagonal(game_board, curr_player)
	if(game_board[0][0] == game_board[1][1] && 
		game_board[1][1] == game_board[2][2]) ||
		(game_board[0][2] == game_board[1][1] && 
		game_board[1][1] == game_board[2][0]) && 
		(game_board[1][1] == "O" || game_board[1][1] == "X")
		if curr_player == true 
			puts "Player 1 wins!"
		else
			puts "Player 2 wins!"
		end
		return true;
	else
		return false;
	end	 
end


board = [[" "," "," "], [" "," "," "], [" "," "," "]]
player = true
#player 1 = true; player 2 = false
i = 0
piece = "X"
while i < 9
	if(player == true)
		puts "Player 1: "
		piece = "X"
	else
		puts "Player 2: "
		piece = "O"
	end

	move1 = gets.strip
	move = move1.to_i
	if board[move/3][move%3] == " " && (move < 9) && (move >= 0)  && move.to_s == move1
		board[move/3][move%3] = piece
		i = i + 1
		player = !player
	else
		puts "Invalid spot, please enter a valid spot"
	end

	print_board(board)

	break if i > 4 && (check_horizontal(board, player) || check_vertical(board, player) || check_diagonal(board, player))

end

puts "Tie!" if i == 9