class AddCoverToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :picture, index: true, foreign_key: true
  end
end
