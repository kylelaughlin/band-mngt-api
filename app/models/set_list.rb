class SetList < ApplicationRecord

  has_many    :set_items
  has_many    :songs, through: :set_items
  belongs_to  :band

end
