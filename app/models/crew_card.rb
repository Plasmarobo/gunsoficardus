class CrewCard < ActiveRecord::Base
  attr_accessible :basic_card_id, :engineer, :gunner, :image, :name, :pilot, :ability, :flavor
  belongs_to :basic_card
  has_one :card_set, through: :basic_card
  has_one :ability



  def get_card_background()
    return self.basic_card.background
  end

  def get_card_set()
    return self.basic_card.card_set
  end

  def get_card_set_icon()
    return self.basic_card.card_set.icon
  end

  def get_card_rariy()
    return self.basic_card.rarity
  end

  def get_card_icon_a()
    return self.basic_card.icon_a
  end

  def get_card_icon_b()
    return self.basic_card.icon_b
  end

  def get_card_icon_c()
    return self.basic_card.icon_c
  end

  def get_primary_icon()
    if(self.pilot > self.gunner and self.pilot > self.engineer)
      return self.icon_a
    else 
      if(self.gunner > self.pilot and self.gunner > self.engineer)
        return self.icon_b
      else
        return self.icon_c
      end
    end
  end

  def get_card_content()
  	return self.ability.get_content_block() + "<br /><br />#{self.flavor}"
  end

  def get_card_name()
  	return self.name;
  end

  def get_card_image()
  	return self.image;
  end

  def get_a_content()
  	return self.pilot.to_s
  end

  def get_b_content()
  	return self.engineer.to_s
  end

  def get_c_content()
  	return self.gunner.to_s
  end
end
