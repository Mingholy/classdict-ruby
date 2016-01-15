class AddClicksToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :clicks, :integer, default:0
  end
end
