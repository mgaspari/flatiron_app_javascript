class AddStorageId < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :storage_id, :integer
  end
end
