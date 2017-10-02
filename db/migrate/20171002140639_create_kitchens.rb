class CreateKitchens < ActiveRecord::Migration[5.1]
  def change
    create_table :kitchens do |t|
      t.integer :school_id

      t.timestamps
    end
  end
end
