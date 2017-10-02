class CreateKegs < ActiveRecord::Migration[5.1]
  def change
    create_table :kegs do |t|
      t.integer :kitchen_id
      t.string :type
      t.date :date_changed
      t.date :date_finished
      

      t.timestamps
    end
  end
end
