class ProgressReport < ActiveRecord::Base
  belongs_to :author, class_name: "Employee", foreign_key: :employee_id
  belongs_to :team, class_name: "Team", foreign_key: :team_id
end
