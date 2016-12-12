class Song < ApplicationRecord

  has_many    :set_items
  has_many    :set_lists, through: :set_items
  belongs_to  :band

  validates :title, presence: true
  validates :band_id, presence: true

  scope :active, ->(user) { where(active: true, band_id: user.band_id) }
  scope :inactive, ->(user) { where(active: false, band_id: user.band_id) }

end
