class SetItem < ApplicationRecord

  belongs_to :song
  belongs_to :set_list

  validates :order, presence: true
  validates :set, presence: true
  validates :song_id, presence: true
  validates :set_list_id, presence: true
  
end
