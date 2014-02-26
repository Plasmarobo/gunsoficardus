class AddFlavorToCrewCards < ActiveRecord::Migration
  def up
  	add_column :crew_cards, :flavor, :string
  end

  def down
  	remove_column :crew_cards, :flavor
  end
end
