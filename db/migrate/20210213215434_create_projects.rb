class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :portfolio, null: false, foreign_key: true
      t.string :name
      t.string :project_name
      t.string :tech
      t.string :description

      t.timestamps
    end
  end
end
