class Api::V1::BandSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :songs
end
