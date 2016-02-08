module FactoryHelper

  $uid = 0
  def self.get_unique_id
    $uid += 1
  end


  def self.random_date_between_now_and_past(date=nil)
    date ||= random_date
    now = 0.days.ago
    time = now - date
    now - rand(time)
  end


  def self.random_date
    (rand(0..(365 * 10))).days.ago
  end


  def self.random_first_name
    Faker::Name.first_name
  end


  def self.random_last_name
    Faker::Name.last_name
  end


  def self.random_email(first_name=nil, last_name=nil)
    first_name ||= Faker::Name.first_name
    last_name ||= Faker::Name.last_name
    "#{first_name}_#{last_name}_#{get_unique_id}@#{Faker::Internet.domain_name}"
  end


  def self.random_group_name
    "#{Faker::Hacker.adjective} #{Faker::Hacker.noun} #{Faker::Hacker.ingverb} #{Faker::Team.creature} #{get_unique_id}"
  end


  def self.random_text
    Faker::Hacker.say_something_smart
  end
end

