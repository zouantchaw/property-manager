
    15.times do
    tenant = Tenant.new(name: Faker::Name.name, age: Faker::Number.within(range: 21..100).to_s, occupation: Faker::Job.title)
    tenant.save 
    end 
    