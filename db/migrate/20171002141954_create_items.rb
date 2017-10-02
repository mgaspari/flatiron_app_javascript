class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :kitchen_id
      t.string :name
      t.integer :student_id
      t.date :exp_date
      t.date :start_date

      t.timestamps
    end
  end
end
