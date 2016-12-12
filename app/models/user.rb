class User < ApplicationRecord

  has_secure_password

  has_and_belongs_to_many :bands

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
