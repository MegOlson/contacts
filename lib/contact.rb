class Contact
  attr_accessor :first_name, :last_name, :job_title, :company, :type

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @type = attributes.fetch(:type)
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def last_first
    "#{@last_name}, #{@first_name}"
  end

end
