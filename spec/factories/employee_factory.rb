FactoryGirl.define do
  factory :employee do
    first_name { FactoryHelper.random_first_name }
    last_name { FactoryHelper.random_last_name }
    email { FactoryHelper.random_email }
    created_at { FactoryHelper.random_date_between_now_and_past }
    updated_at { FactoryHelper.random_date_between_now_and_past }
  end
end

