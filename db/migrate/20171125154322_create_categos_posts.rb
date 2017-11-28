class CreateCategosPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :categos_posts, :id =>false do |t|
      t.integer :post_id
      t.integer :catego_id
    end
    add_index :categos_posts, :post_id
    add_index :categos_posts, :catego_id
  end
end
