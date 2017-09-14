class  Address
  attr_reader :type, :street, :city, :state, :zip
  attr_accessor :addresses
  def initialize(args)
    @type = args.fetch(:type)
    @street = args.fetch(:street)
    @city = args.fetch(:city)
    @state = args.fetch(:state)
    @zip = args.fetch(:zip)
  end

  def to_s
    "#{@type}\n#{@street}\n#{@city}, #{@state}. #{zip}"
  end
end
