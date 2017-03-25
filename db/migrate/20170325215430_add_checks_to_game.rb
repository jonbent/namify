class AddChecksToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :checks, :string
  end
end
