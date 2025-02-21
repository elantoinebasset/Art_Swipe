class AddColumnnameToTablename < ActiveRecord::Migration[8.0]
  def change
    add_reference :artists, :artworks, null: true, foreign_key: true
  end
end
