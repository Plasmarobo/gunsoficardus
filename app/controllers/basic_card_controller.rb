class BasicCardController < ApplicationController
  def list
    cards = BasicCard.find(:all)
    render :list, locals: {cards: cards}
  end

  def list_by_set
    card_sets = CardSet.find(:all)
    render :list_by_set, locals: {card_sets: card_sets}
  end

  def view
    card = BasicCard.find_by_id(params[:id])
    render :view, locals: {card: card}
  end

  def edit
    card = BasicCard.find_by_id(params[:id])
    if(params[:name])
      set = CardSet.find_by_id(params[:cardset])
      card.card_set_id = set.id
      card.name = params[:name]
      card.background = params[:background]
      card.rarity = params[:rarity]
      card.icon_a = params[:icon_a]
      card.icon_b = params[:icon_b]
      card.icon_c = params[:icon_c]
      card.save()
      redirect_to controller: :basic_card, action: :list
    else
      render :edit, locals: {card: card}
    end
  end

  def new
    card = BasicCard.new
    if(params[:name])
      set = CardSet.find_by_id(params[:cardset])
      set.basic_cards.create(name: params[:name], background: Image.find_by_id(params[:background]).name, rarity: params[:rarity], icon_a: Image.find_by_id(params[:icon_a]).name, icon_b: Image.find_by_id(params[:icon_b]).name, icon_c: Image.find_by_id(params[:icon_c]).name)
      redirect_to controller: :basic_card, action: :list
    else
      render :new, locals: {card: card}
    end
  end

  def delete
    if(not (defined?(params[:id])).nil? and params[:confirm] == "yes")
      BasicCard.find_by_id(params[:id]).destroy
      redirect_to controller: :basic_card, action: :list
    else
      if(not (defined?(params[:id])).nil?)
        card = BasicCard.find_by_id(params[:id])
        render :delete, locals: {id: params[:id], name: card.name}
      else
        redirect_to controller: :basic_card, action: :list
      end
    end
  end
end
