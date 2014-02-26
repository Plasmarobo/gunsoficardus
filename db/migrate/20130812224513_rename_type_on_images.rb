class RenameTypeOnImages < ActiveRecord::Migration
  def up
  	rename_column :images, :type, :itype
  end

  def down
  	rename_column :images, :itype, :type
  end
end
