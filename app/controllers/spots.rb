get '/spots/new' do 
  erb :'/spots/new'
end

get '/spots' do
  erb :'/spots/index'
end

def address
  address_string = ""
  if params[:address]
    address_string += params[:address]+" "
  end
  if params[:city]
    address_string += params[:city]+" "
  end
  if params[:state]
    address_string += params[:state]+" "
  end
  if params[:zip]
    address_string += params[:zip]+" "
  end
end

post '/spots/results' do
  @spots = ParkingSpot.near(address)
  erb :'/spots/index'
end

post '/spots' do
  p params
  p "*" * 1000
  user = User.find(session[:id])
  @spot = ParkingSpot.new(params)
  @spot.user_id = user.id
  if @spot.save!
  	redirect "/spots/#{@spot.id}"
  else
  	redirect "/spots/new"
  end
end

get "/spots/:id" do
  @spot = ParkingSpot.find(params[:id])
  erb :"/spots/show"
end