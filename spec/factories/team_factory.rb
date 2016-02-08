FactoryGirl.define do
  factory :team do
    name { FactoryHelper.random_group_name }
    created_at { FactoryHelper.random_date_between_now_and_past }
    updated_at { FactoryHelper.random_date_between_now_and_past }
  end
end

