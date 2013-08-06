#Black Jack
#David C
#August 2013

def card_counter player
	dealt_cards.each do |c|
	if ['K', 'Q', 'J', '10'].include? c[0] 
		dealt_count = player_count + 10
	elsif c[0] == '9'
		dealt_count = dealt_count + 9
	elsif c[0] == '8'
		dealt_count = dealt_count + 8
	elsif c[0] == '7'
		dealt_count = dealt_count + 7
	elsif c[0] == '6'
		dealt_count = dealt_count + 6
	elsif c[0] == '5'
		dealt_count = dealt_count + 5
	elsif c[0] == '4'
		dealt_count = dealt_count + 4
	elsif c[0] == '3'
		dealt_count = dealt_count + 3
	elsif c[0] == '2'
		dealt_count = dealt_count + 2
	end
end

#Make Deck
deck_rank = ['A', 'K', 'Q', 'J', '10', '9', '8', '7', '6', '5', '4', '3', '2']
deck_suits = ['clubs', 'spades', 'hearts', 'diamonds']

total_deck = deck_suits.product(deck_rank)

#shuffle Deck
total_deck.shuffle!
player_cards = []
dealer_cards = []

#player and dealer receives 2 cards
player_cards << total_deck.pop
dealer_cards << total_deck.pop
player_cards << total_deck.pop
dealer_cards << total_deck.pop

#Count the cards that the players have
player_count = card_counter(player_cards)
dealer_count = card_counter(dealer_cards)

#Show cards to user
puts "Dealer has: #{dealer_cards[0]} and #{dealer_cards[1]}. Totaling #{dealer_count}"
puts "You have: #{player_cards[0]} and #{player_cards[1]}. Totaling #{player_count}"

puts 'Would you like to hit? (y)es (n)o'
	hit = gets.chomp.downcase
while  hit == 'y' do
		player_cards << total_deck.pop
		puts "You have: #{player_cards[0]} and #{player_cards[1]} #{player_cards[2]} #{player_cards[3]}  #{player_cards[4]} "
		puts 'Would you like to hit? (y)es (n)o'
		hit = gets.chomp.downcase
end

#values of cards
#player_count = 0
#player_cards.each do |c|
#	if c[0] =='K' || c[0] == 'Q' || c[0] == 'J' || c[0] == '10'
#		player_count = player_count + 10
#	elsif c[0] == '9'
#		player_count = player_count + 9
#	elsif c[0] == '8'
#		player_count = player_count + 8
#	elsif c[0] == '7'
#		player_count = player_count + 7
#	elsif c[0] == '6'
#		player_count = player_count + 6
#	elsif c[0] == '5'
#		player_count = player_count + 5
#	elsif c[0] == '4'
#		player_count = player_count + 4
#	elsif c[0] == '3'
#		player_count = player_count + 3
#	elsif c[0] == '2'
#		player_count = player_count + 2
#	end
#end
#puts player_count

#dealer_count = 0
#dealer_cards.each do |d|
#	if d[0] =='K' || d[0] == 'Q' || d[0] == 'J' || d[0] == '10'
#		dealer_count = dealer_count + 10
#	elsif d[0] == '9'
#		dealer_count = dealer_count + 9
#	elsif d[0] == '8'
#		dealer_count = dealer_count + 8
#	elsif d[0] == '7'
#		dealer_count = dealer_count + 7
#	elsif d[0] == '6'
#		dealer_count = dealer_count + 6
#	elsif d[0] == '5'
#		dealer_count = dealer_count + 5
#	elsif d[0] == '4'
#		dealer_count = dealer_count + 4
#	elsif d[0] == '3'
#		dealer_count = dealer_count + 3
#	elsif d[0] == '2'
#		dealer_count = dealer_count + 2
#	end
#end

puts dealer_count

if dealer_count < player_count
	dealer_cards << total_deck.pop
end
puts''
puts' dealer now has'
puts "#{dealer_count}"


#compare cards who ever has the higest cards wins

