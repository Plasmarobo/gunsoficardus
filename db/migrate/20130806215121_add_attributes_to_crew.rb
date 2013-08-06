class AddAttributesToCrew < ActiveRecord::Migration
  def change
    add_column :crews, :pilot, :integer
    add_column :crews, :engineer, :integer
    add_column :crews, :gunner, :integer
  end
end
