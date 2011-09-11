class Game < ActiveRecord::Base
	attr_accessible :name, :item1, :item2
	has_many :votes
end
