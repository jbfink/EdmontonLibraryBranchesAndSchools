desc "Import public schools data."
task :import_public_schools => :environment do

  File.open("../raw_data/Edmonton_Public_Schools__2013_-_2014_.csv", "r").each do |line|
    school_number,school_name,address,postal_code,ward,website,phone,fax,email,grade_level,grades_offered,programs,latitude,longitude,coordinates = line.strip.split(",")
    school = School.new(:school_number => school_number, :school_name => school_name, :address => address, :postal_code => postal_code, :ward => ward, :website => website, :phone => phone, :fax => fax, :email => email, :grade_level => grade_level, :grades_offered => grades_offered, :programs => programs, :latitude=>latitude, :longitude => longitude, :coordinates => :coordinates, :school_type => "public")
    school.save unless school_number == "AB_SCHOOL_NUMBER"
  end
end
