class Api::V1::SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :band_id
end
