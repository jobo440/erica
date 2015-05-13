class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :date
      t.string :section
      t.integer :order

      t.timestamps null: false
    end
  end
end
