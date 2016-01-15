class CreateBookNotes < ActiveRecord::Migration
  def change
    create_table :book_notes do |t|
      t.string :title
      t.references :book, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :page,default:1
      t.string :page_image
      t.integer :type,default:0
      t.text :content
      t.integer :pro,default:0
      t.integer :con,default:0

      t.timestamps null: false
    end
  end
end
