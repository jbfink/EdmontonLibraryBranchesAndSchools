desc "Import public library data."
task :import_public_libraries => :environment do
  File.open("public_libraries.csv", "r").each do |line|
    branch_id,branch_name,address,postal_code,phone,free_wifi,monday_open,monday_close,tuesday_open,tuesday_close,wednesday_open,wednesday_close,thursday_open,thursday_close,friday_open,friday_close,saturday_open,saturday_close,sunday_open,sunday_close,latitude,longitude,coordinates = line.strip.split(",")
    branch = Branch.new(:branch_id => branch_id, :branch_name => branch_name, :address => address, :postal_code => postal_code, :phone => phone, :free_wifi => free_wifi, :monday_open => monday_open, :monday_close => monday_close, :tuesday_open => tuesday_open, :tuesday_close => tuesday_close, :wednesday_open => wednesday_open, :wednesday_close => wednesday_close, :thursday_open => thursday_open, :thursday_close => thursday_close, :friday_open => friday_open, :friday_close => friday_close, :saturday_open => saturday_open, :saturday_close => saturday_close, :sunday_open => sunday_open, :sunday_close => sunday_close, :latitude => latitude, :longitude => longitude, :coordinates => coordinates) unless branch_id == "BRANCH_ID"
    branch.save
  end
end
