FactoryGirl.define do

  factory :client do
    name "Client"
    email "client@clie.nt"
    birth_date "1990-02-11"
    association :address, factory: :address
  end

end
