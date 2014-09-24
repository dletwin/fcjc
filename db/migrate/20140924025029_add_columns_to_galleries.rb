class AddColumnsToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :month, :string
    add_column :galleries, :day, :integer
    add_column :galleries, :year, :integer
  end
end
