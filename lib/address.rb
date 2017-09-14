class  Address
  attr_accessor :type, :street, :city, :state, :zip
  def initialize(args)
    @type = args.fetch(:type)
    @street = args.fetch(:street)
    @city = args.fetch(:city)
    @state = args.fetch(:state)
    @zip = args.fetch(:zip)
  end

  def to_s
    "#{@type}\n#{@street}\n#{@city}, #{@state}. #{@zip}"
  end
end
