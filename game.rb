# players have a deck
# deck has cards
# cards have stats

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
   end
end