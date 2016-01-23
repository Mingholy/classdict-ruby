class CreateTopicRelations < ActiveRecord::Migration
  def change
    create_table :topic_relations do |t|
      t.integer :topic_id
      t.integer :reply_id

      t.timestamps null: false
    end
  end
end
