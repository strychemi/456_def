class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.integer :employee
      t.integer :team

      t.index [:employee, :team]
      t.timestamps null: false
    end
  end
end
