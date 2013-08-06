class Crew < ActiveRecord::Base
  attr_accessible :ability_a, :ability_b, :edition_id, :flavor, :image, :name, :set_id, :type_id, :pilot, :engineer, :gunner

  belongs_to :cardset, foreign_key: :set_id
  belongs_to :edition 

  def ToCard()
  	c = Card.new
  	c.name = self.name
  	c.content = self.AbilityBlock()
  	c.p_type = self.pilot;
  	c.e_type = self.engineer;
  	c.g_type = self.gunner;
  	c.cardset = self.cardset
  	c.edition = self.edition
  	c.type = self.type
  end

  def AbilityBlock()
  	s = "<div class=\"ability_block\"><div class=\"ability_text\">" + ability_a + "</div>\n<div class=\"ability_text\">" + ability_b + "</div></div>"
  	s.gsub(/\[T\]/, "<img src=\"/assets/images/tap_icon.jpg\"></img>")
  	s.gsub(/\[U\]/, "<img src=\"/assets/images/untap_icon.jpg\"></img>")
  	return s;
  end

end
