# app/serializers/project_serializer.rb
class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :favorite, :color

  has_many :boards
end
