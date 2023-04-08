class Book < ApplicationRecord
  has_and_belongs_to_many :library
  has_and_belongs_to_many :author
  has_and_belongs_to_many :genre
end
