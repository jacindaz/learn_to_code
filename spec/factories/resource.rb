FactoryGirl.define do
  factory :resource do
    sequence(:title) { |n| "Resource Title #{n}"}
    sequence(:url) { |n| "www.resourceurl_#{n}.com"}

    free { [true, false].sample }
    language { Resource::LANGUAGES.sample }
    tech { Resource::TECHNOLOGIES.sample }
    sequence(:description) { |n| "resource description blah blah #{n}"}
  end
end
