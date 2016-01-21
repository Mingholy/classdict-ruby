class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :content_type
      t.integer :content_id

      t.timestamps null: false
    end
  end
end
