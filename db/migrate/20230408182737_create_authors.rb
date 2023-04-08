class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :fullname
      t.integer :age
      t.string :place_of_birth
      t.string :favorite_genre

      t.timestamps
    end
  end
end
