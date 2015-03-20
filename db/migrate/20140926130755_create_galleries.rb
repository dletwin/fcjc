class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string    :name, null:false
      t.string    :month
      t.string    :day
      t.string    :year

      t.datetime "created_at"
      t.datetime "updated_at"

    end
  end
end
