
User.destroy_all
Case.destroy_all

p "Creating doctors ..."

5.times do |i|
  doctor = User.create(
    user_type: 'doctor',
    email: Faker::Internet.email,
    password: 'password1',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    pwz_number: "6554327A",
    dob: Faker::Date.between(from: 25.days.ago, to: 45.years.ago),
    sex: ['m', 'f'].sample
  )
end

p "Creating patients and their cases ..."

20.times do |i|
  patient = User.create(
    user_type: 'patient',
    email: Faker::Internet.email,
    password: 'password1',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    pesel: Faker::IDNumber.brazilian_citizen_number,
    phone: "+48555123422",
    dob: Faker::Date.between(from: 25.days.ago, to: 45.years.ago),
    weight: rand(65..95),
    height: rand(159..185),
    sex: ['m', 'f'].sample
  )
  
  # Create closed cases
  3.times do |i|
    Case.create(
      patient: patient,
      description: Faker::Lorem.paragraphs.join(''),
      solution: Faker::Lorem.paragraphs.join(''),
      doctor: User.doctor.all.sample,
      status: 'closed'
    )
  end

  # Create active case
  Case.create(
    patient: patient,
    description: Faker::Lorem.paragraphs.join(''),
    solution: Faker::Lorem.paragraphs.join(''),
    doctor: User.doctor.all.sample,
    status: 'active',
    covid_suspected: [false, false, false, false, false, false, false, true].sample
  )
end
