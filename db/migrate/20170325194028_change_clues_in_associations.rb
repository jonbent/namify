class ChangeCluesInAssociations < ActiveRecord::Migration[5.0]
  def change
    remove_column :associations, :clue
    remove_column :associations, :player_id
    add_column :associations, :clues, :string

  end
end
