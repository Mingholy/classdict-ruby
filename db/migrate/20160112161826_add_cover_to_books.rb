class AddCoverToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :picture, index: true, foreign_key: true
  end
end
