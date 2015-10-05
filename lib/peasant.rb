require_relative "unit.rb"

class Peasant < Unit

  START_HEALTH_POINTS = 35
  START_ATTACK_POWER = 0

  def initialize
    super(START_HEALTH_POINTS, START_ATTACK_POWER)
  end

end