FactoryBot.define do
  factory :user do
    username              {"testname"}
    email                 {"test@test.com"}
    gender                {1}
    age                   {25}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end
end
