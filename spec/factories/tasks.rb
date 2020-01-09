FactoryBot.define do
  factory :task do
    title { 'Task' }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
    completion_date { nil }
    trait :done do
      completion_date { 1.day.ago }
    end
  end
end
