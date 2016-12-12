class Band < ApplicationRecord

  has_many :songs
  has_many :set_lists
  has_and_belongs_to_many :users

  validates :name, presence: true
end
