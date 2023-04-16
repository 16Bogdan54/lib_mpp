class Book < ApplicationRecord
  belongs_to :library
  has_many :authors
  has_many :genres

  def self.add
    (1..100).each { |i|
      input = Book.new(title: "title #{i}",
                       description: "desc #{i}",
                       library_id: Library.find(i).id,
                       author_id: Author.find(i).id,
                       genre_id: Genre.find(i).id,
                       created_at: Time.now,
                       updated_at: Time.now)
      input.save
    }
  end

  def self.updateAll
    (1..100).each { |i|
      book = Book.find_by(id: i)
      book.update(
        title: "upd title #{i}",
        description: "upd desc #{i}",
        updated_at: Time.now
      )
      book.save
    }
  end

  def self.UpdateById(id)
    book = Book.find_by(id)

    book.update(
      title: "upd by id(#{id}) title",
      description: "upd by id(#{id}) desc",
      updated_at: Time.now
    )
    book.save
  end

end
