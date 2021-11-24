class CreateStylists < ActiveRecord::Migration[7.0]
  def change
    create_table :stylists do |t|
      t.string :name
      t.text :bio
      t.string :instagram
      t.integer :rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
