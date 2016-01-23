class AddColumnToUserinfos < ActiveRecord::Migration
  def change
    add_column :userinfos, :publisher_id, :integer
  end
end
