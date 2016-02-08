class CreateEmployeeTeams < ActiveRecord::Migration
  def change
    create_table :employee_teams do |t|
      t.integer :employee_id
      t.integer :team_id

      t.index [:employee_id, :team_id], unique: true

      t.timestamps null: false
    end
  end
end
