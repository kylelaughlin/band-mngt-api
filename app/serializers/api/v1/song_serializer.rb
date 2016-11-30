class Api::V1::SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :band_id

  belongs_to :band
end
