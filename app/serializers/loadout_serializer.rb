class LoadoutSerializer < ActiveModel::Serializer
  attributes :id, :loadout_name, :armor_slot, :weapon_slot, :trinket_slot

  belongs_to :user
end
