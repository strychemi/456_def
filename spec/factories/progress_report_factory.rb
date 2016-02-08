FactoryGirl.define do
  factory :progress_report do
    body { FactoryHelper.random_text }
  end
end

