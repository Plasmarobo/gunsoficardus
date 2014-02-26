class CrewCardsController < ApplicationController
  def list
    cards = CrewCard.find(:all)
    render :list, locals: {cards: cards}
  end

  def list_by_set
    card_sets = CardSet.find(:all)
    render :list_by_set, locals: {card_sets: card_sets}
  end

  def view
    card = CrewCard.find_by_id(params[:id])
    render template: 'basic_card/view', locals: {card: card}
  end

  def edit
  end

  def new
    if(params[:name])
      image_id = params[:image];
      card = CrewCard.create(basic_card_id: params[:basiccard],image: Image.find_by_id(image_id).name, name: params[:name], pilot: params[:pilot] , gunner: params[:gunner] , engineer: params[:engineer], flavor: params[:flavor])
      card.create_ability(textA: params[:textA], titleA: params[:titleA], textB: params[:textB], titleB: params[:titleB])
      redirect_to action: :view, id: card.id
    else
      card = CrewCard.new
      card.ability = Ability.new
      render :new, locals: {card: card}
    end
  end

  def delete
    if(not (defined?(params[:id])).nil? and params[:confirm] == "yes")
      CrewCard.find_by_id(params[:id]).destroy
      redirect_to controller: :crew_cards, action: :list
    else
      if(not (defined?(params[:id])).nil?)
        card = CrewCard.find_by_id(params[:id])
        render :delete, locals: {id: params[:id], name: card.name}
      else
        redirect_to controller: :crew_cards, action: :list
      end
    end
  end
end
