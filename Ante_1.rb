class Card
	attr_accessor :val, :suite
	def initialize(card)
		
		@val, @suite = card.split("")
	end
end

class Hand
	attr_accessor :cards
	def initialize(cards)
		@cards = cards.split(" ").map{|ch| Card.new(ch)}

	end

	def rank
		return "STRAIGHT FLUSH" if straight? && flush?
		return "STRAIGHT" 	if straight? 
		return "FLUSH"		if flush? 
		return {
		
			[4,1] => "FOUR OF A KIND",
			[3,2] => "FULL HOUSE",
			[3,1] => "THREE OF A KIND",
			[2,2] => "TWO PAIRS",
			[2,1] => "SINGLE PAIR",
			[1,1] => "HIGH CARD"
		}[val_count(@cards).sort.reverse[0..1]]
		
	end

	def ranks
    [
      "HIGH CARD",
      "SINGLE PAIR",
      "TWO PAIRS",
      "THREE OF A KIND",
      "STRAIGHT",
      "FLUSH", 
      "FULL HOUSE",
      "FOUR OF A KIND",
      "STRAIGHT FLUSH"
    ]
  end
   def ranking
    ranks.index(rank)
   end


	#  Returns and array with count of card values
	def val_count(cards)
		"123456789TJQK".chars.collect{|char| cards.count {|card| card.val == char}}
	end
	# Returns and array with count of Suites. Ignore the spelling in the function
	def suit_count(cards)
		["C","D","H","S"].collect{|ch| cards.count{|card| card.suite == ch}}
	end

	def straight?
		val_count(@cards).join("").include?("11111")
	end


	def flush?
		suit_count(@cards).sort.reverse[0] == 5
	end

	# Functions for comparing 2 hands
	 def keys
    	[ranking,val_count(@cards).reverse]
     end
     def <=>(other)
        keys <=> other.keys
     end
end

class Poker_Engine
	attr_accessor :all_hands, :count
	def initialize(all_hands)
		@all_hands = all_hands.map{|hand| Hand.new(hand) }
		@count = @all_hands.size

	end

	def print
		@all_hands.each do |hand|
			puts hand.rank
		end
	end

	def evaluate
		(0...@count).map do |count|
			
			@all_hands.count do |hand|
				 
				
				( @all_hands[count] <=> hand) > 0
			end
			
		end
			
	
		

	end

	def winner
		
		"Card number #{evaluate.index(@count-1) +1} is the winner"
	end

end





pe = Poker_Engine.new(["JD QS 5D 6D KD","JC TH 5S 6S KS","JS JH 8S 8S 9S"])


pe.print
puts pe.winner

