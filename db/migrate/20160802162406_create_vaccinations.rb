class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.string :drug_name
      t.float :dosage_in_ml
      t.integer :pet_id
      t.date :administered_on

      t.timestamps null: false
    end
  end
end
