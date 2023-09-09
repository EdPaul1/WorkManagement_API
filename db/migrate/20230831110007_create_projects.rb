class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :favorite
      t.string :color

      t.timestamps
    end
  end
end
