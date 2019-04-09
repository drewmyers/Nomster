class AddPictureToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :picture, :string
    add_index :photos, :picture
  end
end
