require 'faker'

City.destroy_all
Tag.destroy_all
User.destroy_all
Gossip.destroy_all

# seed pour les city
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Base.regexify(/[0-8][0-9][0-9]{3}/)
  )
end

10.times do
    Tag.create!(
        title: Faker::Hipster.word
    )
  end



10.times do
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem.sentence,
        email: Faker::Internet.email,
        age: Faker::Number.between(from: 7, to: 77),
        city_id: City.all.sample.id
      )
end

20.times do
    user = User.all.shuffle.last
    Gossip.create!(
      title: Faker::Hipster.sentence(word_count: 2, supplemental: true),
      content: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
      user_id: user.id,
    )
  end

