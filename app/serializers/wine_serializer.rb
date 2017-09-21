class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :variety, :appellation, :winery, :comments, :tasted_on, :created_at, :updated_at
end
