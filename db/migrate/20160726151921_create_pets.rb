class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.datetime :born_at
      t.date :last_visit_on
      t.boolean :fixed

      t.timestamps null: false
    end
  end
end
