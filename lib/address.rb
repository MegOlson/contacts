class  Address
  attr_reader :type, :street, :city, :state, :zip

  def initialize(args)
    @type = args.fetch(:type)
    @street = args.fetch(:street)
    @city = args.fetch(:city)
    @state = args.fetch(:state)
    @zip = args.fetch(:zip)
  end

end
