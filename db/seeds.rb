require "faker"

# Limpa os dados anteriores
Job.delete_all
Company.delete_all

# Cria 10 empresas
companies = 10.times.map do
  Company.create!(
    name: Faker::Company.unique.name,
    description: Faker::Company.catch_phrase,
    website: Faker::Internet.url,
    industry: Faker::Company.industry,
    location: Faker::Address.city
  )
end

# Cria 100 vagas de emprego
100.times do
  company = companies.sample
  title = Faker::Job.title
  location = Faker::Address.city
  currency = %w[USD EUR BRL].sample
  employment_type = rand(0..2) # ajuste conforme seus enums
  experience_level = rand(0..2) # idem
  is_remote = [ true, false ].sample
  salary_min = rand(2000..8000)
  salary_max = salary_min + rand(1000..5000)

  Job.create!(
    company: company,
    title: title,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    full_description: Faker::Lorem.paragraphs(number: 5).join("\n\n"),
    salary_min: salary_min,
    salary_max: salary_max,
    salary_currency: currency,
    employment_type: employment_type,
    experience_level: experience_level,
    location: location,
    is_remote: is_remote,
    is_active: true,
    expires_at: Faker::Date.forward(days: 60)
  )
end

puts "Seed finalizado com #{Company.count} empresas e #{Job.count} vagas."
