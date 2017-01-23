class AddPlayersToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :palyers, :integer
  end
end
