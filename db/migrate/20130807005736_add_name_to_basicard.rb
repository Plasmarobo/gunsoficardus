class AddNameToBasicard < ActiveRecord::Migration
  def up
  	add_column :basic_cards, :name, :string
  end

  def down
  	remove_column :basic_cards, :name
  end
end
