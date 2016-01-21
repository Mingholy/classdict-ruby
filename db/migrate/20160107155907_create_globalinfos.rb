class CreateGlobalinfos < ActiveRecord::Migration
  def change
    create_table :globalinfos do |t|
      t.string :title
      t.string :publisher,default:'Admin'
      t.text :content

      t.timestamps null: false
    end
  end
end
