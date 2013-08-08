class AddCrewCardIdToAbility < ActiveRecord::Migration
  def up
  	rename_column :abilities, :crewcard_id, :crew_card_id
  end

  def down
  	rename_column :abilities, :crew_card_id, :crewcard_id
  end
end
