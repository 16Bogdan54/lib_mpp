class Author < ApplicationRecord
  belongs_to :book

  def self.add
    (1..100).each { |i|
      q = "INSERT INTO authors(name, bio, created_at, updated_at) VALUES ('name #{i.to_s}', 'bio #{i.to_s}', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(q)
    }
  end

  def self.update
    (1..100).each do |i|
      q = "UPDATE authors SET name = 'updated name #{i.to_s}', bio = 'updated bio #{i.to_s}', updated_at = NOW() WHERE id = #{i}"
      ActiveRecord::Base.connection.execute(q)
    end
  end

  def self.updateById(id)
      q = "UPDATE authors SET name = 'updated name by id(#{id})', bio = 'updated bio by id(#{id})', updated_at = NOW() WHERE id = #{id}"
      ActiveRecord::Base.connection.execute(q)
  end

end