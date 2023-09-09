class AddTaskToBoards < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :task, foreign_key: true
  end
end
