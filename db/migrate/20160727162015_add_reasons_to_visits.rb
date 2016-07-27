class AddReasonsToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :reason, :string
  end
end
