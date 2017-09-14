require 'sinatra'
require 'sinatra/reloader'
also_reload ('lib/**/*.rb')
require './lib/contact'
require './lib/address'
require './lib/phone_number'
require 'pry'

get ('/') do
  @contacts = Contact.all
  erb(:input)
end

post ('/') do
  type = params["type"]
  first_name = params["first_name"]
  last_name = params["last_name"]
  job_title = params["job_title"]
  company = params["company"]
  new_contact = Contact.new(:type => type, :first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company)
  new_contact.save
  @contacts = Contact.all
  erb(:input)
end

get('/contact/:id') do
  @contact = Contact.find(params[:id])
  erb(:contact)
end

post('/contact') do
  @contact = Contact.find(params[:id])
  number = params["number"]
  number_type = params["number_type"]
  address_type = params["address_type"]
  street = params["street"]
  city = params["city"]
  state = params["state"]
  zip = params["zip"]
  new_address = Address.new(:type => address_type, :street => street, :city => city, :state => state, :zip => zip)
  new_number = PhoneNumber.new
  new_number.kind = number_type
  new_number.number = number
  # binding.pry
  @contact[0].add_phone_number(new_number)
  @contact[0].add_address(new_address)

  erb(:contact)
end
