class Board < ApplicationRecord
    belongs_to :project
    has_many :tasks, dependent: :destroy
end
  