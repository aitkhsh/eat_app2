class AddPlaceIdAndNameAndAddressToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :place_id, :string
    add_column :bookmarks, :name, :string
    add_column :bookmarks, :address, :string
  end
end
