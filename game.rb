# players have a deck
# deck has cards
# cards have stats

require 'securerandom'

class Player
   attr_accessor :name, :email, :password, :deck
   def initialize(name, email, password, deck=[])
      @name = name
      @email = email
      @password = password
      @deck = deck
   end
end

# capture stature && relevant position
class Card
   attr_accessor :name, :top, :left, :bottom, :right, :element, :img
   def initialize(name, top, left, bottom, right, element=nill, img=nill)
      @name = name
      @top = top
      @left = left
      @bottom = bottom
      @right = right
      @element = element
      @img = img
      @card_id = SecureRandom.uuid
   end
end

# multiple instances of the same exact card 

# irb -r './game.rb'
# These are all the cards player 1 has
# player1 = Player.new('michael', 'm@example', '11111')
# card = Card.new('Tornberry' , 1, 2, 3, 4)
# player1.deck << card 

# we need a way to store this information. - by a database - SQLite