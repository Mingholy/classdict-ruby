class RenameColumnForBookNotes < ActiveRecord::Migration
  def change
    rename_column :book_notes, :type, :content_type
  end
end
