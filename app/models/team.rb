class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee"

  has_many :employee_teams
  has_many :members, through: :employee_teams, source: :employee

  has_many :progress_reports
end
