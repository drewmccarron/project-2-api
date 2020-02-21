class AddUserToLoadouts < ActiveRecord::Migration[5.2]
  def change
    add_reference :loadouts, :user, foreign_key: true
  end
end
