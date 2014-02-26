class CardSetController < ApplicationController
  def new
    if(params[:name])
      card_set = CardSet.create(icon: Image.find_by_id(params[:icon]).name, image: Image.find_by_id(params[:image]).name, name: params[:name], release: Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i), desc: params[:desc])
      redirect_to action: :view, id: card_set.id
    else
      set = CardSet.new
      set.release = Time.now
      render :new, locals: {card_set:set}
    end
  end

  def list
    card_sets = CardSet.find(:all)
    render :list, locals: {card_sets: card_sets, target:"none", select_mode: false, list_id: "card_set_list", selected_index:nil}
  end

  def view
    card_set = CardSet.find_by_id(params[:id])
    render :view, locals: {card_set: card_set}
  end

  def edit
    card_set = CardSet.find_by_id(params[:id])
    if(params[:name])
      card_set.name = params[:name]
      if(card_set.icon != params[:icon])
        card_set.icon = Image.find_by_id(params[:icon]).name
      end
      if(card_set.image != params[:image])
        card_set.image = Image.find_by_id(params[:image]).name
      end
      card_set.release = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i)
      card_set.desc = params[:desc]
      card_set.save()
      redirect_to controller: :card_set, action: :list
    else
      render :edit, locals: {card_set: card_set}
    end
  end

  def delete
    if((not (defined?(params[:id])).nil?) and params[:confirm] == "yes")
      CardSet.find_by_id(params[:id]).destroy
      redirect_to controller: :card_set, action: :list
    else
      if(not (defined?(params[:id])).nil?)
        set = CardSet.find_by_id(params[:id])
        render :delete, locals: {id: params[:id], name: set.name}
      else
        redirect_to controller: :card_set, action: :list
      end
    end
  end
end
