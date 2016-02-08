class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :employee

      t.index :employee

      t.timestamps null: false
    end
  end
end
