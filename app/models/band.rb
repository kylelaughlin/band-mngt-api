class Band < ApplicationRecord

  has_many :songs
  has_many :set_lists
  has_many :users

end
