FactoryBot.define do
  factory :message do
    message { "MyText" }
    chat { nil }
    sent_by { "MyString" }
  end
end
