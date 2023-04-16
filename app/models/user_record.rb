class UserRecord < ApplicationRecord
  belongs_to :library
  has_one :user

  def self.add
    (1..100).each { |i|
      input = UserRecord.new(
                       library_id: Library.find(i).id,
                       user_id: User.find(i).id,
                       created_at: Time.now,
                       updated_at: Time.now
      )
      input.save
    }
  end

  def self.updateAll
    (1..100).each { |i|
      record = UserRecord.find_by(id: i)
      record.update(
        updated_at: Time.now
      )
      record.save
    }
  end

  def self.UpdateById(id)
    record = UserRecord.find_by(id)

    record.update(
      updated_at: Time.now
    )
    record.save
  end

end
