class Artist < ApplicationRecord
  has_many :artworks, dependent: :destroy
  def to_s
    title
  end
end
