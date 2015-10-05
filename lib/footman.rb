# http://classic.battle.net/war3/human/units/footman.shtml

require_relative "unit.rb"

class Footman < Unit

  START_HEALTH_POINTS = 60
  START_ATTACK_POWER = 10

  def initialize
    super(START_HEALTH_POINTS, START_ATTACK_POWER)
  end

end