
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
			total -= 10 if total_count > 21
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
	
	dealer_counter = 0 
	user_counter = 0
	
	while dealer_total < 17 do
		dealer_cards << deck.pop
		dealer_total = counter(dealer_cards)
	end

	puts "You have #{user_cards[0]} and #{user_cards[1]}, totaling #{user_total}"
	puts "Dealer has #{dealer_cards[0...5]}, totaling #{dealer_total}"
	puts "Do you want to (h)it or (s)tay? "
	action = gets.chomp.downcase




	while action == 'h' do
		#player hits
		user_cards << deck.pop
		user_total = counter(user_cards)
		puts "You now have #{user_cards[0...6]} totaling #{user_total}"
		puts "(h)it or (s)tay?"
		action = gets.chomp.downcase
		if action == 's'
			puts 'ok, you stay'
		end		
	
	end
	#win or lose
	if user_total > 21
		puts "BUST!"
		dealer_counter += 1
	elsif user_total > dealer_total
		puts "you win"
		user_counter += 1
	elsif user_total < dealer_total
		puts "you lose"
		dealer_counter += 1
	elsif dealer_total > 21
		puts "Dealer Bust!"
		user_counter += 1
	end



 