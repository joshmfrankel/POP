FactoryGirl.define do
  factory :journal do
    title "MyString"
    editor "Josh"
    description "MyText"
    impact_factor 1
  end

  factory :fancy_journal, class: Journal do
    title "A fancy article"
    editor "Megan"
    description "MyText"
    impact_factor 1
  end
end
