class Api::V1::SetItemSerializer < ActiveModel::Serializer
  attributes :songs

  belongs_to :set_list

  def songs
    
  end
end
