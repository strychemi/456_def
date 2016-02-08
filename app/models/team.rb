class Team < ActiveRecord::Base
  #belongs_to :employee
  #belongs_to :owner, through: :employees, foreign_key: :employee_id

  belongs_to :owner
  has_many :members, through: :employees, foreign_key: :team_id
  has_many :progress_reports
end
