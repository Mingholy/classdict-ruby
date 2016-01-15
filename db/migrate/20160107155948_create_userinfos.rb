class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
      t.string :publisher
      t.text :content

      t.timestamps null: false
    end
  end
end
