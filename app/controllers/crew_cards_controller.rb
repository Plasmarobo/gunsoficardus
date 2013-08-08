class CrewCardsController < ApplicationController
  def list
    cards = CrewCard.find(:all)
    render :list, locals: {cards: cards}
  end

  def view
    card = CrewCard.find_by_name(params[:name])
    render template: 'basic_card/view', locals: {card: card}
  end

  def edit
  end

  def new
  end

  def delete
  end
end
