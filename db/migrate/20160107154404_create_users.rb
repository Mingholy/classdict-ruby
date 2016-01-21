class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :nickname
      t.integer :level,default: 0
      t.integer :score,default: 0

      t.timestamps null: false
    end
  end
end
