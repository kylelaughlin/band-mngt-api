class SetList < ApplicationRecord

  has_many    :set_items
  has_many    :songs, through: :set_items
  belongs_to  :band

  scope :future, ->(user) { where("band_id = ? AND performance_date >= ?", user.band_id, Date.today) }
  scope :past, ->(user) { where("band_id = ? AND performance_date < ?", user.band_id, Date.today) }

end
