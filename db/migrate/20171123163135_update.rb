class Update < ActiveRecord::Migration[5.1]
  def change

    add_column :posts, :slider, :boolean
    add_column :posts, :fechafin, :datetime
    #add_foreign_key :categoria,:posts
    change_column_default(:posts, :body, '-')
  end
end
