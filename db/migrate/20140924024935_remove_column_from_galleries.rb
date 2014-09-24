class RemoveColumnFromGalleries < ActiveRecord::Migration
  def change
    remove_column :galleries, :date
  end
end
