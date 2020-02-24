class CreateLoadouts < ActiveRecord::Migration[5.2]
  def change
    create_table :loadouts do |t|
      t.string :loadout_name, null: false
      t.string :armor_slot
      t.string :weapon_slot
      t.string :trinket_slot

      t.timestamps
    end
  end
end
