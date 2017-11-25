class CreateCategoriasPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :categorias_posts do |t|
      t.references :post, foreign_key: true
      t.references :categoria, foreign_key: true

      t.timestamps
    end
  end
end
