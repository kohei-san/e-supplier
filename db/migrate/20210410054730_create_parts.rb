class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string      :name,          null: false
      t.text        :info,          null: false
      t.integer     :material_id,   null: false
      t.integer     :processing_id, null: false
      t.integer     :deadline_id,   null: false
      t.references  :buyer,      foreign_key: true
      t.timestamps
    end
  end
end
