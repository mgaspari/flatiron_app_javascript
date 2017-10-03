class ChangeColumnNameToKegs < ActiveRecord::Migration[5.1]
  def change
    rename_column :kegs, :type, :keg_content
  end
end
