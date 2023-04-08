class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :city
      t.float :price

      t.timestamps
    end
  end
end
