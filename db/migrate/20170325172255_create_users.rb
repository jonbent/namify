class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :picture_url
      t.string :full_name
      t.string :user_name
      t.string :cohort

      t.timestamps
    end
  end
end
