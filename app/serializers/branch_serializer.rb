class BranchSerializer < ActiveModel::Serializer
  attributes :id, :branch_name, :address, :phone, :branch_id, :monday_open, :monday_close, :tuesday_open, :tuesday_close, :wednesday_open, :wednesday_close, :thursday_open, :thursday_close, :friday_open, :friday_close, :saturday_open, :saturday_close, :sunday_open, :sunday_close, :free_wifi, :latitude, :longitude, :json_ld
  
  # attribute =>object

  def json_ld
    { "@context" => "http=>//example.com/library_branch.jsonld",
     "branch_name"=> @branch_name,
     "branch_id"=> @branch_id,
     "address"=> @address,
     "phone" => @phone,
     "monday_open" => @monday_open,
     "monday_close"=> @monday_close,
     "tuesday_open"=> @tuesday_open,
     "tuesday_close"=> @tuesday_close,
     "wednesday_open"=> @wednesday_open,
     "wednesday_close"=> @wednesday_close,
     "thursday_open"=> @thursday_open,
     "thursday_close"=> @thursday_close,
     "friday_open"=> @friday_open,
     "friday-close"=> @friday_close,
     "saturday_open"=> @saturday_open,
     "saturday_close"=> @saturday_close,
     "sunday_open"=> @sunday_open,
     "sunday_close"=> @sunday_close,
     "free_wifi"=> @free_wifi,
     "latitude"=> @latitude,
     "longitude"=> @longitude }
  end




end
