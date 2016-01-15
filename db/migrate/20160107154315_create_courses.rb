class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :school
      t.date :time
      t.text :description

      t.timestamps null: false
    end
  end
end
