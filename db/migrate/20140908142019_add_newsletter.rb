class AddNewsletter < ActiveRecord::Migration
  def change
    create_table :newsletter do |t|
      t.string :title
      t.string :month
      t.integer :year
    end
  end
end
