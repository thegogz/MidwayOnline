class Player < ActiveRecord::Base
	attr_accessible :email, :name, :phone
	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	has_many :characters, dependent: :destroy
	
end
