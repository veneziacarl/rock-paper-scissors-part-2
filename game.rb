# ### Requirements
#
# !* The user is playing against a computer opponent in Rock, Paper, Scissors.
# !* A game consists of a series of rounds until either player has won.
# !* The first player to win two rounds is declared the winner and the game ends.
# !* The number of rounds won by the player and the computer are shown each round.
# !* Output the winner of the game before exiting.
# !* The computer opponent randomly chooses between rock, paper, and scissors each round.
# !* The user chooses their shape by typing `"r"` (rock), `"p"` (paper), or `"s"` (scissors) each round.
# !* If the player enters an invalid shape, print an error message and start the next round.
# !* If both players choose the same shape, it is a tie and no one wins the round.

computer_score = 0
player_score = 0

while computer_score != 2 && player_score != 2 do
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
  puts "Choose rock (r), paper (p), or scissors (s)"
  player_choice = gets.chomp

  if player_choice == "r"
    player_choice = "rock"
    puts "Player chose #{player_choice}."
  elsif player_choice == "p"
    player_choice = "paper"
    puts "Player chose #{player_choice}."
  elsif player_choice == "s"
    player_choice = "scissors"
    puts "Player chose #{player_choice}."
  else
    puts "Invalid entry, please try again."
    redo
  end

  computer_selection = rand(3)
  if computer_selection == 0
    computer_choice = "rock"
  elsif computer_selection == 1
    computer_choice = "paper"
  elsif computer_selection == 2
    computer_choice = "scissors"
  end
  puts "Computer chose #{computer_choice}."

  if computer_choice == "rock" && player_choice == "scissors"
    puts "#{computer_choice.capitalize} beats #{player_choice}, Computer wins!"
    computer_score += 1
  elsif computer_choice == "scissors" && player_choice == "paper"
    puts "#{computer_choice.capitalize} beats #{player_choice}, Computer wins!"
    computer_score += 1
  elsif computer_choice == "paper" && player_choice == "rock"
    puts "#{computer_choice.capitalize} beats #{player_choice}, Computer wins!"
    computer_score += 1
  elsif player_choice == "rock" && computer_choice == "scissors"
    puts "#{player_choice.capitalize} beats #{computer_choice}, Player wins!"
    player_score += 1
  elsif player_choice == "scissors" && computer_choice == "paper"
    puts "#{player_choice.capitalize} beats #{computer_choice}, Player wins!"
    player_score += 1
  elsif player_choice == "paper" && computer_choice == "rock"
    puts "#{player_choice.capitalize} beats #{computer_choice}, Player wins!"
    player_score += 1
  else
    puts "Tie!"
  end
end

if player_score == 2
  puts "Congratulations, Player! You won RPS against the Computer #{player_score} - #{computer_score}!"
else
  puts "Player, you have lost against the Computer #{player_score} - #{computer_score}! Try again."
end









# ### Sample Usage
#
# Player wins:
#
# ```no-highlight
# $ ruby game.rb
# Player Score: 0, Computer Score: 0
# Choose rock (r), paper (p), or scissors (s): r
# Player chose rock.
# Computer chose rock.
# Tie, choose again.
#
# Player Score: 0, Computer Score: 0
# Choose rock (r), paper (p), or scissors (s): s
# Player chose scissors.
# Computer chose paper.
# Scissors beats paper, player wins the round.
#
# Player Score: 1, Computer Score: 0
# Choose rock (r), paper (p), or scissors (s): s
# Player chose scissors.
# Computer chose paper.
# Scissors beats paper, player wins the round.
#
# Player wins!
# ```
#
# Computer wins:
#
# ```no-highlight
# $ ruby game.rb
# Player Score: 0, Computer Score: 0
# Choose rock (r), paper (p), or scissors (s): s
# Player chose scissors.
# Computer chose rock.
# Rock beats scissors, computer wins the round.
#
# Player Score: 0, Computer Score: 1
# Choose rock (r), paper (p), or scissors (s): r
# Player chose rock.
# Computer chose paper.
# Paper beats rock, computer wins the round.
#
# Computer wins!
# ```
#
# Invalid input:
#
# ```no-highlight
# Player Score: 0, Computer Score: 0
# Choose rock (r), paper (p), or scissors (s): b
# Invalid entry, try again.
# ```
