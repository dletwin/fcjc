class AddNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :month
      t.integer :year

      t.timestamps
    end
  end
end
