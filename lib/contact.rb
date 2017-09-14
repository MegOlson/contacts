class Contact < Address
  attr_accessor :first_name, :last_name, :job_title, :company, :type
  attr_reader :addresses
  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @type = attributes.fetch(:type)
    @addresses = []
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def last_first
    "#{@last_name}, #{@first_name}"
  end

  def add_address(type, street, city, state, zip)
    address = Address.new(:type => type, :street => street, :city => city, :state => state, :zip => zip)
    @addresses.push(address)
  end
end
