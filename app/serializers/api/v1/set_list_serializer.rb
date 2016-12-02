class Api::V1::SetListSerializer < ActiveModel::Serializer
  attributes :id, :name, :performance_date, :set_one

  has_many :set_items

  def set_one
    @songs = Song.where()
  end
end
