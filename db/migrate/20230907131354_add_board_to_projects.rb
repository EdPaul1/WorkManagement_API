class AddBoardToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :board, foreign_key: true
  end
end
