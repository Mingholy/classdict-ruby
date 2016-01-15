class AddClicksToBooks < ActiveRecord::Migration
  def change
    add_column :books, :clicks, :integer,default:0
  end
end
