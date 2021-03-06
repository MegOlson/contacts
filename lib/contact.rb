# require 'address'
# require 'phone_number'

class Contact
  @@contacts = []

  # class NoIdError < StandardError
  # end

  attr_accessor :first_name, :last_name, :job_title, :company, :type,:addresses, :phone_numbers
  attr_reader :contacts, :id

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @type = attributes.fetch(:type)
    @addresses = []
    @phone_numbers = []
    @id = @@contacts.length + 1
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def last_first
    "#{@last_name}, #{@first_name}"
  end

  def add_address(address)
    @addresses.push(address)
  end

  def add_phone_number(phone_number)
    @phone_numbers.push(phone_number)
  end

  def self.all
    @@contacts
  end

  def save
    @@contacts.push(self)
  end

  def self.clear
    @@contacts = []
  end

  def self.find(id)
    contact_id = id.to_i
    @@contacts.each do |contact|
      if contact.id == contact_id
        return contact
      # else
      #   raise NoIdError "Id does not exits"
      end
    end
  end
end
