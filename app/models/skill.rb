class Skill < ActiveRecord::Base
	attr_accessible :cp_cost, :name
	validates :cp_cost, :presence => true
	validates :name, :presence => true, :uniqueness => true
	has_many :skillinstances
  has_many :characters, through: :skillinstances
end
