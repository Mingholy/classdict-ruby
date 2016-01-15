class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author,default: '网络'
      t.date :publish_time
      t.string :version,default: '1.0'
      t.string :filepath
      t.integer :pro,default: 0
      t.integer :con,default:0
      t.integer :difficulty,default:5

      t.timestamps null: false
    end
  end
end
