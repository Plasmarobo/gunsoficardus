class BasicCard < ActiveRecord::Base
  attr_accessible :background, :card_set_id, :rarity, :name, :icon_a, :icon_b, :icon_c, :id
  belongs_to :card_set
  has_many :crew_cards
  
  @adv_card_ref = nil

  def get_card_background()
    return self.background
  end

  def get_card_set()
    return self.card_set
  end

  def get_card_set_icon()
    return self.card_set.icon
  end

  def get_card_rariy()
    return self.rarity
  end

  def get_card_icon_a()
    return self.icon_a
  end

  def get_card_icon_b()
    return self.icon_b
  end

  def get_card_icon_c()
    return self.icon_c
  end

  def get_primary_icon()
    return self.icon_a
  end

  def get_card_content()
    return "<div class='errortext'>Content Error</div>"
  end

  def get_card_name()
    return "<div class='errortext'>Name Error</div>"
  end

  def get_card_image()
    return 'error.png'
  end

  def get_a_content()
    return "<div class='errortext'>0</div>"
  end

  def get_b_content()
    return "<div class='errortext'>0</div>"
  end

  def get_c_content()
    return "<div class='errortext'>0</div>"
  end
end
