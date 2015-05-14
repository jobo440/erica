class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :posts, :order, :position
  end
end
