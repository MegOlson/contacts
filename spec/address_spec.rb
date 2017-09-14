require 'rspec'
require 'address'

describe 'Address' do
  let(:my_address) { Address.new(:type => "Home", :street => "1020 University #305", :city => "Seattle", :state => "WA", :zip => "98101")}

  describe '#initialize' do
    it "has a readable type" do
      expect(my_address.type).to eq "Home"
    end

    it "has a readable street" do
      expect(my_address.street).to eq "1020 University #305"
    end

    it "has a readable city" do
      expect(my_address.city).to eq "Seattle"
    end

    it "has a readable state" do
      expect(my_address.state).to eq "WA"
    end

    it "has a readable zip" do
      expect(my_address.zip).to eq "98101"
    end
  end

  describe '#to_s' do
    it "has a user friendly readable address" do
      expect(my_address.to_s).to eq "Home\n1020 University #305\nSeattle, WA. 98101"
    end
  end
end
