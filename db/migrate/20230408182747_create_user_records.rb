class CreateUserRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :user_records do |t|
      t.string :subscription_type
      t.float :payment
      t.date :exp_date

      t.timestamps
    end
  end
end
