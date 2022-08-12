# players have a deck
# deck has cards
# cards have stats

require 'securerandom'
require 'sqlite3'

db = SQLite3::Database.new("game.db")
rows = db.execute <<-SQL
create table players(
   id PRIMARY KEY,
   name varchar(255),
   email varchar(255),
   password varchar(255)
);

create table cards (
   id PRIMARY KEY,
   name varchar(255),
   top int,
   left int,
   bottom int,
   right int,
   element varchar(255),
   img varchar(255),
   card_id varchar(255),
   player_id int
);

SQL

p rows

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

   # Write to the database
   def save
      $db.execute <<-SQL
         INSERT INTO cards (name, top, left, bottom, right)
         VALUES ("#{@name}" , "#{@top}" , "#{@left}", "#{bottom}", "#{@right}" );
      SQL
      puts "#{@name}-#{@card_id} saved to database!"
   end
end

@card.save












# multiple instances of the same exact card 

# irb -r './game.rb'
# These are all the cards player 1 has
# player1 = Player.new('michael', 'm@example', '11111')
# card = Card.new('Tornberry' , 1, 2, 3, 4)
# player1.deck << card 

# we need a way to store this information. - by a database - SQLite