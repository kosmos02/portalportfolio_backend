class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.references :user, null: false, foreign_key: true
      t.string :project_name1
      t.string :tech1
      t.string :description1
      t.string :project_name2
      t.string :tech2
      t.string :description2
      t.string :project_name3
      t.string :tech3
      t.string :description3

      t.timestamps
    end
  end
end
