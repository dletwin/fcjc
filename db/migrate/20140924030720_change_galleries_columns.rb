class ChangeGalleriesColumns < ActiveRecord::Migration
  def change
    change_column :galleries, :month, :string, null: false
    change_column :galleries, :day, :integer, null: false
    change_column :galleries, :year, :integer, null: false
  end
end
