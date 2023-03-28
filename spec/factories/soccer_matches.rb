FactoryBot.define do
  factory :soccer_match do
    player { nil }
    date { DateTime.now.strftime('%Y-%m-%d %H:%M:%S') }
    resume { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
    victory { false }
    defeat { false }
    tied_score { false }
    match_score { %w[ 1x1 2x2 3x2 10x7 5x5 ].sample }
    goal { (1..100).to_a.sample }
  end
end
