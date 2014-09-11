class AddAttachmentColumnToNewsletters < ActiveRecord::Migration
  def change
    add_column :newsletters,  :attachment, :string
    change_column :newsletters, :attachment, :string, null: false
  end
end
