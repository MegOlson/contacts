require 'rspec'
require 'phone_number'

describe 'PhoneNumber' do
  it 'has a readable phone number' do
    new_number = PhoneNumber.new
    new_number.kind = "Home"
    new_number.number = "215.345.9876"
    expect(new_number.to_s).to eq "Home: 215.345.9876"
  end
end
