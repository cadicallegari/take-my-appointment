FactoryGirl.define do

  factory :phone do
    area_code "99"
    number "44445555"
    type 1
    association :client, factory: :client
  end

end
