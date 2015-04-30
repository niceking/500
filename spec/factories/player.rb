FactoryGirl.define do
  factory :player do
    hand {{"Hearts" => [5, 11, 13], 
              "Diamonds" => [4, 14], 
              "Clubs" => [8], 
              "Spades" => [6, 7, 9], 
              "Joker" => ["Joker"]}}
  end
end
