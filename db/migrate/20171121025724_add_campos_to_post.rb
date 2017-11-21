class AddCamposToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :fecha, :datetime
    add_column :posts, :imagen, :string
  end
end
