class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :height
      t.integer :waist
      t.integer :shoe
      t.integer :chest
      t.text :reason_for_styling
      t.integer :number_of_outfits
      t.integer :budget_per_outfit
      t.references :user, null: false, foreign_key: true
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
