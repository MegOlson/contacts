require 'rspec'
require 'contact'

describe 'Contact' do
  let(:new_contact) { Contact.new(:first_name => "Elrey", :last_name => "Belmonti", :job_title => "Web Developer", :company => "apieceofstar", :type => "business") }

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

end
