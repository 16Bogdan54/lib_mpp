class Library < ApplicationRecord
  has_and_belongs_to_many :book
  has_many :user_record
end
