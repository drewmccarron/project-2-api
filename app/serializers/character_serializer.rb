class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :character_name, :current_armor_slot, :current_weapon_slot, :current_trinket_slot
end
