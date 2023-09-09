class AddIndexToTasksOnBoardId < ActiveRecord::Migration[7.0]
  def change
    add_index :tasks, :board_id, name: 'index_tasks_on_board_id'
  end
end
