class CreateArtworks < ActiveRecord::Migration[8.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image
      t.references :artist, null: false, foreign_key: true
      t.date :creation_date
      t.text :history

      t.timestamps
    end
  end
end
