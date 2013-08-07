class CrewCard < ActiveRecord::Base
  attr_accessible :basic_card, :engineer, :gunner, :image, :name, :pilot
  belongs_to :basic_card

  def render()
  end
end
