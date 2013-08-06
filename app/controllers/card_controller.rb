class CardController < ApplicationController
  def new
  end

  def edit
  end

  def view
  	case params[:type]
  		when :crew
  			@card = Crew.findById(params[:id]).ToCard();
  		when :ship
  			@card = Card.new
  		when :tool
  			@card = Card.new
  		when :event
  			@card = Card.new
  		else 
  			@card = Card.new
  	end
  end
end
