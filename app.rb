require 'sinatra'
require 'sinatra/reloader'
also_reload ('lib/**/*.rb')
require './lib/contact'
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
  binding.pry
  @contacts = Contact.all
  erb(:input)
end
