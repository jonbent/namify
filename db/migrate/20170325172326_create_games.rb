class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.integer :correct
      t.integer :total

      t.timestamps
    end
  end
end
