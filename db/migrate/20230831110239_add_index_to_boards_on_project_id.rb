class AddIndexToBoardsOnProjectId < ActiveRecord::Migration[7.0]
  def change
    add_index :boards, :project_id, name: 'index_boards_on_project_id'
  end
end
