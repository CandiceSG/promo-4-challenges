class Customer

  attr_reader :name, :address, :id

  def initialize(name, address, id)
    @name = name
    @address = address
    @id = id
  end
end