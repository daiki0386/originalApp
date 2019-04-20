class AddRoomIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :room_id, :string
  end
end
