def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_deal = deal_card
  second_deal = deal_card
  card_total = first_deal + second_deal
  puts "This is the end of your first deal"
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  player_choice = get_user_input
  if player_choice == 'h'
    new_card = deal_card
    card_total += new_card
    return card_total
  elsif player_choice == 's'
    return card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_sum = initial_round
  until card_sum > 21 do
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
end_game(card_sum)
end
    
