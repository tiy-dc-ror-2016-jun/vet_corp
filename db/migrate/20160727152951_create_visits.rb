class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :pet_id
      t.date :visited_on
      t.float :weight_in_kg
      t.text :notes

      t.timestamps null: false
    end
  end
end
