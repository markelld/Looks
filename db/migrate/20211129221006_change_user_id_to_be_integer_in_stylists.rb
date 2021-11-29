class ChangeUserIdToBeIntegerInStylists < ActiveRecord::Migration[7.0]
  def change 
  change_column :stylists, :user_id, :integer
  end
end
