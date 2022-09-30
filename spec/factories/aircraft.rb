# frozen_string_literal: true
FactoryBot.define do
  factory :aircraft do
    manufacturer    { 'Cessna' }
    model           { '172' }
    ac_number       { 'N01234' }
    consumption     { 3.76 }
    co2             { 5 }
    distance        { 1000 }
    speed           { 221 }
    rw_length       { 2500 }
    a_check_cost    { 4682 }
    a_check_hours   { 400 }
    cost            { 51000 }
  end
end
