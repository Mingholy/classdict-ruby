class AddColumnToBookNotes < ActiveRecord::Migration
  def change
    add_reference :book_notes, :picture, index: true, foreign_key: true
  end
end
