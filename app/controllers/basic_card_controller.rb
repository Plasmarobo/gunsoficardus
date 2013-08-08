class BasicCardController < ApplicationController
  def list
    cards = BasicCard.find(:all)
    render :list, locals: {cards: cards}
  end

  def view
    card = BasicCard.find_by_name(params[:name])
    render :view, locals: {card: card}
  end

  def edit
  end

  def new
  end

  def delete
  end
end
