class User < ApplicationRecord
  belongs_to :user_record

  def self.add
    (1..100).each { |i|
      q = "INSERT INTO users(name, surname, age, email, created_at, updated_at) VALUES ('name #{i}', 'surname #{i}', '#{i}', 'user#{i}@gmail.com', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(q)
    }
  end

end