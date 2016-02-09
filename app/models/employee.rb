class Employee < ActiveRecord::Base
  has_many :employee_teams
  has_many :teams, through: :employee_teams

  has_many :progress_reports

  has_many :owned_teams, class_name: "Team", source: :owner
end
