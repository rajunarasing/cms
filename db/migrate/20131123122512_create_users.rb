class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_type
      t.date :dob
      t.string :email
      t.string :address
      t.string :phone_num
      t.date :doj

      t.timestamps
    end
  end
end
