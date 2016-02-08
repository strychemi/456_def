class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :employee_id

      t.index :employee_id

      t.timestamps null: false
    end
  end
end
