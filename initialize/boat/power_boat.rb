class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motor_type}"
  end
end
