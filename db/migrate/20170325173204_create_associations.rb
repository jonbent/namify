class CreateAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :associations do |t|
      t.references :user, foreign_key: true
      t.integer :player_id
      t.string :clue

      t.timestamps
    end
  end
end
