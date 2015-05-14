class ChangeOrderToPosition < ActiveRecord::Migration
  def change
   rename_column :posts, :order, :position
  end
end
