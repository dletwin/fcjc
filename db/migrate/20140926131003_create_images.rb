class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title, null:false
      t.string :description, null:false

      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
