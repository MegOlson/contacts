require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('contact', {:type => :feature}) do
  before do
    Contact.clear
  end
  it 'displays contact on page' do
    visit('/')
    fill_in('type', :with => 'Business')
    fill_in('first_name', :with => 'Elrey')
    fill_in('last_name', :with => 'Belmonti')
    fill_in('job_title', :with => 'Web Developer')
    fill_in('company', :with => 'apieceofstar')
    click_button('Add Contact')
    expect(page).to have_content("Elrey Belmonti")
  end
end
describe('contact', {:type => :feature}) do
  it 'displays contact details on contact page' do
    visit('/contact/1')
    expect(page).to have_content("Belmonti, Elrey", "Web Developer", "apieceofstar", "Business")
  end
end
