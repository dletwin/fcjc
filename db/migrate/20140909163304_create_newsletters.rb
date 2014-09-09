class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title, null:false
      t.string :month, null:false
      t.integer :year, null:false

      t.timestamps
    end
  end
end
