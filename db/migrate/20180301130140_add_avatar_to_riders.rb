class AddAvatarToRiders < ActiveRecord::Migration[5.1]
  def change
    add_column :riders, :avatar, :string
  end
end
