class Card < ActiveRecord::Base
  attr_accessible :cardset_id, :content, :e_type, :edition_id, :g_type, :name, :p_type, :type_id
  has_one :cardset
  has_one :edition
  has_one :type

end
