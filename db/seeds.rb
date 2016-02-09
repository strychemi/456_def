# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying Old Data"

Employee.destroy_all
Team.destroy_all
ProgressReport.destroy_all
EmployeeTeam.destroy_all

puts  "Old Data Successfully Deleted"

MULTIPLIER = 10

def generate_employee
  e = Employee.new
  e.first_name = Faker::Name.first_name
  e.last_name = Faker::Name.last_name
  e.email = Faker::Internet.email
  e.save
end

def generate_team
  t = Team.new
  t.name = Faker::Hacker.noun
  t.employee_id = Employee.pluck(:id).sample
  t.save
end

def generate_progress_report
  pr = ProgressReport.new
  pr.body = Faker::Lorem.sentence(1)
  pr.employee_id = Employee.pluck(:id).sample
  pr.team_id = Team.pluck(:id).sample
  pr.save
end

def generate_employee_team
  et = EmployeeTeam.new
  e_id = Employee.pluck(:id).sample
  t_id = Team.pluck(:id).sample
  # generate random composite keys until the uniqueness constraint is true
  until !EmployeeTeam.where("employee_id=#{e_id}").where("team_id=#{t_id}")[0]
    e_id = Employee.pluck(:id).sample
    t_id = Team.pluck(:id).sample
  end
  et.employee_id = e_id
  et.team_id = t_id
  et.save
end

puts "generating Employees"
MULTIPLIER.times { generate_employee }
puts "generating Teams"
MULTIPLIER.times { generate_team }
puts "generating ProgressReports"
MULTIPLIER.times { generate_progress_report }
puts "generating EmployeeTeams"
MULTIPLIER.times { generate_employee_team }
puts "DONE"
