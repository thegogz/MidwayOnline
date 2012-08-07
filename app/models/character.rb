class Character < ActiveRecord::Base
	attr_accessible :active, :background, :name
	validates :name, presence: true, uniqueness: true
	validates :player_id, presence: true
	has_one :player
	has_many :skillinstances, dependent: :destroy
	has_many :skills, through: :skillinstances, uniq: true
	scope :active, where(active: true)
	scope :inactive, where(active: false)
end
