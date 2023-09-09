# app/serializers/board_serializer.rb
class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :project
  has_many :tasks
end
