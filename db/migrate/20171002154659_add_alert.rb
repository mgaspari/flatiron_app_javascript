class AddAlert < ActiveRecord::Migration[5.1]
  def change
      add_column :items, :alert_sent, :boolean, default: false
  end
end
