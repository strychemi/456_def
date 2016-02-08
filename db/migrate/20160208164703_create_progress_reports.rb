class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.integer :employee_id
      t.integer :team_id

      t.index [:employee_id, :team_id]
      t.timestamps null: false
    end
  end
end
