FactoryGirl.define do
  factory :payment do
    year 2016
    month 5
    student {Student.all.sample}
    paid_at "2016-04-01"
  end
end
