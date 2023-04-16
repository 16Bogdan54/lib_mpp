class Library < ApplicationRecord
  has_many :books
  has_many :user_records

  def self.add
    (1..100).each { |i|
      loc = i % 2 == 0 ? 'Kharkiv' : 'Odessa'
      q = "INSERT INTO libraries(name, location, created_at, updated_at) VALUES ('name #{i}', '#{loc} #{i}', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(q)
    }
  end

  def self.update
    (1..100).each do |i|
      q = "UPDATE libraries SET name = 'updated name #{i.to_s}', location = 'updated location #{i.to_s}', updated_at = NOW() WHERE id = #{i}"
      ActiveRecord::Base.connection.execute(q)
    end
  end

  def self.updateById(id)
    q = "UPDATE libraries SET name = 'updated name by id(#{id})', location = 'updated location by id(#{id})', updated_at = NOW() WHERE id = #{id}"
    ActiveRecord::Base.connection.execute(q)
  end


end