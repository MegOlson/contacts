require 'rspec'
require 'contact'

describe 'Contact' do
  before do
    Contact.clear
  end
  let(:new_contact) { Contact.new(:first_name => "Elrey", :last_name => "Belmonti", :job_title => "Web Developer", :company => "apieceofstar", :type => "business") }

  let(:new_contact2) { Contact.new(:first_name => "Oscar", :last_name => "Bartra", :job_title => "Web Developer", :company => "Axon", :type => "business") }

  describe '#initialize' do
    it 'will have a readable first name' do
      expect(new_contact.first_name).to eq 'Elrey'
    end

    it 'will have a readable last name' do
      expect(new_contact.last_name).to eq 'Belmonti'
    end

    it 'will have a readable job title' do
      expect(new_contact.job_title).to eq 'Web Developer'
    end

    it 'will have a readable company' do
      expect(new_contact.company).to eq 'apieceofstar'
    end

    it 'will have a readable type' do
      expect(new_contact.type).to eq 'business'
    end

    it 'will add a readable address list' do
      expect(new_contact.addresses).to be_an Array
    end

    it 'will add a readable phone number list' do
      expect(new_contact.phone_numbers).to be_an Array
    end
  end

  describe '#full_name' do
    it 'will return the full name' do
      expect(new_contact.full_name).to eq 'Elrey Belmonti'
    end
  end

  describe '#last_first' do
    it 'will return the full name last name first' do
      expect(new_contact.last_first).to eq 'Belmonti, Elrey'
    end
  end

  describe '#add_address' do
    it 'will add address to address list' do
      expect{ new_contact.add_address("Home", "1020 University #305", "Seattle", "WA", "98101") }.to change{ new_contact.addresses.length }.from(0).to(1)
    end
  end

  describe '#add_phone_number' do
    it 'will add phone number to phone numberlist' do
      expect{ new_contact.add_phone_number("Home", "215.345.9876") }.to change{ new_contact.phone_numbers.length }.from(0).to(1)
    end
  end

  describe '.all' do
    it 'is empyt at first' do
      expect(Contact.all).to eq []
    end
  end

  describe '#save' do
    it 'saves as contact to the list of contacts' do
      expect{ new_contact.save }.to change{ Contact.all.length }.from(0).to(1)
    end
  end

  describe '.clear' do
    it 'clears all contacts from list' do
      new_contact.save
      expect{ Contact.clear }.to change{ Contact.all.length }.from(1).to(0)
    end
  end

  describe '#id' do
    it 'increments an id by 1' do
      new_contact.save
      new_contact2.save
      expect(new_contact2.id).to eq 2
    end
  end
end
