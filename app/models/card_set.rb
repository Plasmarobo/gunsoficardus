class CardSet < ActiveRecord::Base
  attr_accessible :icon, :image, :name, :release
  has_many :basic_cards
end
