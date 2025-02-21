class Artwork < ApplicationRecord
  belongs_to :artist

  def to_s
    title + artist_id
  end
end
