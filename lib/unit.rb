class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points =  health_points
    @attack_power = attack_power   
  end

  def attack!(enemy)
    if enemy.dead? || self.dead?
      nil
    else
      if enemy.is_a?(Unit)
        enemy.damage(@attack_power)
      elsif enemy.is_a?(Barracks)
        enemy.damage(@attack_power / 2)
      end
    end
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def dead?
    # true if it meets the criteria, false otherwise
    @health_points <= 0
  end

end