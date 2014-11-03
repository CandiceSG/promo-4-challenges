class Employee

  attr_reader :name, :password, :id, :status

  def initialize(name, password, id, status = :delivery_boy)
    @name = name
    @password = password
    @id = id
    @status = status
  end
end

class Manager < Employee

  attr_reader :name, :password, :id, :status

  def initialize(name, password, id)
    super(name, password, id, :manager)
  end
end

