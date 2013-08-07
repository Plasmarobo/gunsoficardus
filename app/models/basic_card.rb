class BasicCard < ActiveRecord::Base
  attr_accessible :background, :card_set, :rarity, :name, :icon_a, :icon_b, :icon_c
  belongs_to :card_set
  has_many :crew_cards

  def get_card_content()
  end

  def get_card_name()
  end

  def get_card_image()
  end

  def get_card_sidebar()
  end

  def get_a_content()
  end

  def get_b_content()
  end

  def get_c_content()
  end
end
