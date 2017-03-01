class AddSettingsToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :settings, :text
  end
end
