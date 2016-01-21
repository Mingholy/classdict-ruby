class CreateCoursebooks < ActiveRecord::Migration
  def change
    create_table :coursebooks do |t|
      t.references :course, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
