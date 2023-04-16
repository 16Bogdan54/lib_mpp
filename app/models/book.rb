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

end
