class AddToIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :to_id, :integer
  end
end
