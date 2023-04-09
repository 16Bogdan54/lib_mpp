class UserRecord < ApplicationRecord
  belongs_to :library
  has_one :user

end
