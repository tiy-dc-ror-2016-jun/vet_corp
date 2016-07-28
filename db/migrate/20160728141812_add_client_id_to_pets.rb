class AddClientIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :client_id, :integer
  end
end
