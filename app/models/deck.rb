class Deck < ActiveRecord::Base
  attr_accessible :name, :user_id
end
