require_relative '../config/environment'

names = %w[nancy bob sam ben wiel meghan evan adam]

names.each do |name|
    email = name + "@gmail.com"
    password = name + "123"
    user = User.new(name: name, email: email, password: password)
    1.times do
    property = user.properties.build(address: Faker::Address.full_address, description: Faker::Quote.famous_last_words, rent:Faker::Number.decimal(l_digits: 3, r_digits: 3).to_s)
    user.save 
    property.create_tenant(name: Faker::Name.name, age: Faker::Number.within(range: 21..100).to_s, occupation: Faker::Job.title)
    end 
    
end 