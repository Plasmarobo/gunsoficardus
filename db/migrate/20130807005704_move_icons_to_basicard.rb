class MoveIconsToBasicard < ActiveRecord::Migration
  def up
  	remove_column :crew_cards, :icon_a
  	remove_column :crew_cards, :icon_b
  	remove_column :crew_cards, :icon_c
  	add_column :basic_cards, :icon_a, :string
  	add_column :basic_cards, :icon_b, :string
  	add_column :basic_cards, :icon_c, :string
  end

  def down
  	remove_column :basic_cards, :icon_a
  	remove_column :basic_cards, :icon_b
  	remove_column :basic_cards, :icon_c
  	add_column :crew_cards, :icon_a, :string
  	add_column :crew_cards, :icon_b, :string
  	add_column :crew_cards, :icon_c, :string
  end
end
