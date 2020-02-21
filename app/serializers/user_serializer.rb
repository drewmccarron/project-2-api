# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :character_name, :equipped_armor_slot, :equipped_weapon_slot, :equipped_trinket_slot
end
