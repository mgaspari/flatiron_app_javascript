class AddColumnToKegs < ActiveRecord::Migration[5.1]
  def change
    add_column :kegs, :amount_full, :integer
  end
end
