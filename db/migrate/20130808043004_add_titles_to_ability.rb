class AddTitlesToAbility < ActiveRecord::Migration
  def up
  	add_column :abilities, :titleA, :string
  	add_column :abilities, :titleB, :string
  end

  def down
  	remove_column :abilities, :titleA
  	remove_column :abilities, :titleB
  end
end
