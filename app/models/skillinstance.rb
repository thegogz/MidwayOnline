class Skillinstance < ActiveRecord::Base
	attr_accessible :active, :cp_spent, :rank
	belongs_to :character
	belongs_to :skill
end
