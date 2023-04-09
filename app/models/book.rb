class Book < ApplicationRecord
  belongs_to :library
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :genres
end
