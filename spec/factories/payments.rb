FactoryGirl.define do
  factory :payment do
    due_date DateTime.now.tomorrow
    ref_date 1.month.ago
    paid_at  DateTime.now
    value   70.50
    association :client, factory: :client
  end

end
