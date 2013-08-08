class BasicCard < ActiveRecord::Base
  attr_accessible :background, :card_set_id, :rarity, :name, :icon_a, :icon_b, :icon_c
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

  def get_card_content()
    if(@adv_card_ref != nil)
      return @adv_card_ref.get_card_content()
    else
      return "<div class='errortext'>Content Error</div>"
    end
  end

  def get_card_name()
    if(@adv_card_ref != nil)
      return @adv_card_ref.get_card_name()
    else
      return "<div class='errortext'>Name Error</div>"
    end
  end

  def get_card_image()
    if(@adv_card_ref != nil)
      return @adv_card_ref.get_card_image()
    else
      return 'error.png'
    end
  end

  def get_a_content()
    if(@adv_card_ref != nil)
      return @adv_card_ref.get_a_content()
    else
      return "<div class='errortext'>0</div>"
    end
  end

  def get_b_content()
    if(@adv_card_ref != nil)
      return @adv_card_ref.get_b_content()
    else
      return "<div class='errortext'>0</div>"
    end
  end

  def get_c_content()
    if(@adv_card_ref != nil)
      return @adv_card_ref.get_c_content()
    else
      return "<div class='errortext'>0</div>"
    end
  end
end
