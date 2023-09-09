# app/serializers/board_task_serializer.rb
class BoardTaskSerializer < ActiveModel::Serializer
    attributes :name, :status, :priority, :completed, :due_date, :description
end
  