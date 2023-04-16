class User < ApplicationRecord
  belongs_to :user_record

  def self.add
    (1..100).each { |i|
      q = "INSERT INTO users(name, surname, age, email, created_at, updated_at) VALUES ('name #{i}', 'surname #{i}', '#{i}', 'user#{i}@gmail.com', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(q)
    }
  end

  def self.update
    (1..100).each do |i|
      q = "UPDATE users SET name = 'updated name #{i.to_s}', surname = 'surname location #{i.to_s}', email = 'email location #{i.to_s}', updated_at = NOW() WHERE id = #{i}"
      ActiveRecord::Base.connection.execute(q)
    end
  end

  def self.updateById(id)
    q = "UPDATE users SET name = 'updated name by id(#{id})', surname = 'updated surname by id(#{id})', email = 'updated email by id(#{id})', updated_at = NOW() WHERE id = #{id}"
    ActiveRecord::Base.connection.execute(q)
  end


end