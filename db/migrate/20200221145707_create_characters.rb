class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.string :current_armor_slot
      t.string :current_weapon_slot
      t.string :current_trinket_slot

      t.timestamps
    end
  end
end
