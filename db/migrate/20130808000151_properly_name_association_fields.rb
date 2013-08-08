class ProperlyNameAssociationFields < ActiveRecord::Migration
  def up
  	rename_column :basic_cards, :cardset_id, :card_set_id
  	rename_column :crew_cards, :basiccard_id, :basic_card_id
  end

  def down
  	rename_column :basic_cards, :card_set_id, :cardset_id
  	rename_column :crew_cards, :basic_card_id, :basiccard_id
  end
end
