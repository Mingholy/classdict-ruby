class CreateBookReviews < ActiveRecord::Migration
  def change
    create_table :book_reviews do |t|
      t.string :title
      t.references :book, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :content
      t.integer :pro,default:0
      t.integer :con,default:0

      t.timestamps null: false
    end
  end
end
