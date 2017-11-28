class CreateCategos < ActiveRecord::Migration[5.1]
  def change
    create_table :categos do |t|
      t.string :nombre
      t.string :color

      t.timestamps
    end
  end
end
