class AddNewsletter < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :Name
      t.string :Month
      t.integer :year
  end
end
