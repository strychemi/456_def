class Employee < ActiveRecord::Base
  has_many :teams
  has_many :progress_reports
  has_many :owned_teams, through: :teams, source: :owner

  #has_many :teams, through: :employee_teams, source: :employee
end
