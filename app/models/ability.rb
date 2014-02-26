class Ability < ActiveRecord::Base
  attr_accessible :textA, :textB, :crew_card_id, :titleA, :titleB
  belongs_to :crew_card

  def CMLtoHTML(string)
  	#Tap icon
    string = string.gsub(/\[T\]/,"<div class='tap'>&nbsp</div>")
    #Untap icon
    string = string.gsub(/\[U\]/,"<div class='untap'>&nbsp</div>")
    return string;
  end

  def get_content_block()
  	return "<div class='ability_title'>#{titleA}:</div><div class='ability_block'> #{CMLtoHTML(textA)}</div><br /><br />
  			<div class='ability_title'>#{titleB}:</div><div class='ability_block'> #{CMLtoHTML(textB)}</div>"
  end
end
