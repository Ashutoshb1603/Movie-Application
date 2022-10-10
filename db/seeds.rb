# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
FactoryBot.define do

    factory :movie do
      title     { Faker::Movie.title }
      budget    { rand(10 ** 8)      }
      homepage  { rand(1..10) }
      overview  { Faker::Lorem.word }
      popularity{ Faker::Lorem.word }
      release_date{ Faker::Date.between(from: '2001-09-23', to: '2022-09-25')}
      revenue   { rand(10 ** 9)  }
      runtime   { rand(100..1000) }
      movie_status{ Faker::Lorem.word }
      tagline   {Faker::Lorem.sentence }
      votes_avg {rand(100..1000) }
      votes_count{ rand(10 ** 3)  }
    end


    
    factory :country do
        country_name{Faker::Address.country}
        country_iso_code{Faker::Address.country_code }
    end

    
    factory :production_company do
        company_name{Faker::Lorem.word }

    end 

    
end

myArray= ["staff", "DOP", "Jr.Artist", "Sr.Artist", "Costume", "Makeup", "Action & stunt","Camera & lighting" ,"diretor's" , "story writing" , "special effect" , "production","E.T.C." ] 




20.times do |i|
    puts "creating movies"
    FactoryBot.create(:movie)

   
   
    puts "creating countries"
    FactoryBot.create(:country)

   
    puts "creating languages"
    Language.create(
        language_name: "language#{i+1}" ,
        language_code: "#{i+1}"
    )
    
   
    puts "creating language_roles";
    LanguageRole.create(
        language_role: "role #{i+1}"
    )
    
    
    
    puts "creating generes"
    Genere.create(
        genere_name: "genere#{i+1}"
    )

    
    
    puts "creating keywords"
    Keyword.create(
        keyword_name: "keyword#{i+1}"
    )
    

    puts "creating production_companies"
    FactoryBot.create(:production_company)


    
    puts "creating departments"
    Department.create(
        
        department_name: myArray[rand(myArray.length)]

    )
    
    puts "creating genders"
    Gender.create(
        gender: ["M", "F", "O"].sample
    )
    
    puts "creating people"
    Person.create(
        person_name: "Person#{i+1}"
    )
end




