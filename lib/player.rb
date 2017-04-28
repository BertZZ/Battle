class Player
  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hit_points
  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hp
  end

  def hit_points
    @hit_points
  end

  def receive_damage
    @hit_points -= rand(5..15)
  end
end
