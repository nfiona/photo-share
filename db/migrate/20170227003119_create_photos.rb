class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :img_url
      t.string :description
      t.references :album
      t.timestamps
    end
  end
end
