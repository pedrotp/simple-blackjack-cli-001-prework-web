def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_total = 1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2

  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    new_total = card_total
  elsif user_input == "h"
    newcard = deal_card
    new_total = card_total + newcard
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  new_total = hit?(card_total)
  display_card_total(new_total)
  until new_total > 21
    hit?(new_total)
  end
  end_game(new_total)
end
    
