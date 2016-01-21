class RemoveColumnFromBookNotes < ActiveRecord::Migration
  def change
    remove_column :book_notes, :page_image, :string
  end
end
