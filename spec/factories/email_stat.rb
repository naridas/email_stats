FactoryGirl.define do
  factory :email_stat do
    address "barney@lostmy.name"
    email_type "Shipment"
    event "send"
    timestamp 1_432_820_696
  end
end
