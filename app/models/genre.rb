class Genre < ApplicationRecord
  belongs_to :book

  def self.add
    (1..100).each { |i|
      input = Genre.new(
        name: "name #{i}",
        created_at: Time.now,
        updated_at: Time.now
      )
      input.save
    }
  end

  def self.updateAll
    (1..100).each { |i|
        genre = Genre.find_by(id: i)
        genre.update(
          name: "updated name #{i}",
          updated_at: Time.now
        )
        genre.save
    }
  end

  def self.UpdateById(id)
    genre = Genre.find_by(id)

    genre.update(
      name: "updated by id(#{id}) name"
    )
    genre.save
  end

end