FactoryGirl.define do

  factory :hotel do
    title "My first hotel"
    description "Sample hotel description"
    breakfast true
    star_rating 1
  end

  factory :invalid_hotel, parent: :hotel do
    title nil
  end

end
