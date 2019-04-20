class AddFromIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :from_id, :integer
  end
end
