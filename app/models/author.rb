class Author < ApplicationRecord
  has_and_belongs_to_many :book
end