class AddGuessToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :guesses, :string
  end
end
