# app/serializers/task_serializer.rb
class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :priority, :completed, :due_date, :description

  belongs_to :board
end
