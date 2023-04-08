class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :genre_type
      t.integer :recommended_age

      t.timestamps
    end
  end
end
