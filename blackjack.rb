#Black Jack
#David C
#August 2013

def counter(hand_delt)

	arr = hand_delt.collect{|c| c[1]}

#counts cards
total_count = 0
	arr.each do |value|
		if value == 'A'
			total_count += 11
			elsif value.to_i == 0 
			total_count += 10
			else
			total_count += value.to_i
		end
	end
		#correcting aces
		arr.select{|e| e == "A"}.count.times do
			total_count -= 10 if total_count > 21
			end

		total_count
end


#create the deck
suits = ['Diamonds', 'Hearts', 'Spades', 'Clubs']
ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

deck = suits.product(ranks)
deck.shuffle!

	#deal cards
	user_cards = []
	dealer_cards = []

	user_cards << deck.pop
	dealer_cards << deck.pop
	user_cards << deck.pop
	dealer_cards << deck.pop

	#calculate card values
	user_total = counter(user_cards)
	dealer_total = counter(dealer_cards)

while dealer_total < 17 do
	dealer_cards << deck.pop
	dealer_total = counter(dealer_cards)
end

puts "You have #{user_cards[0]} and #{user_cards[1]}, totaling #{user_total}"
puts "Dealer has #{dealer_cards[0...5]}, totaling #{dealer_total}"

if dealer_total > 21
	puts 'Dealer Busts!'
	#end program 
end

	action = ''
	puts "Do you want to (h)it or (s)tay? "
	action = gets.chomp.downcase

#hit or stay
while action == 'h'
	puts "You have #{user_cards[0...5]}, totaling #{user_total}"
	puts "Dealer has #{dealer_cards[0...5]}, totaling #{dealer_total}"
	puts "Do you want to (h)it or (s)tay? "
	action = gets.chomp.downcase
		if action == 'h'
			user_cards << deck.pop
			user_total = counter(user_cards)
		end
end

if dealer_total > 21
	puts 'Dealer Busts'
elsif dealer_total == user_total
	puts 'Tie Game'
elsif user_total > 21
	puts 'You Busted'
elsif user_total > dealer_total
	puts 'You Win'
elsif user_total < dealer_total
	puts 'you Lose'
end

		