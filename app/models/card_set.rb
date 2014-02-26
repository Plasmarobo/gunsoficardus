class CardSet < ActiveRecord::Base
  attr_accessible :icon, :image, :name, :release, :id, :desc, :id
  has_many :basic_cards
  has_many :crew_cards, through: :basic_cards

end
