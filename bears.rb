class Bears

  attr_reader :bear_name, :bear_type

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @stomach = []
  end

  def stomach_contents
    return @stomach.size()
  end

  def take_fish(river_fish)
    @stomach.push(river_fish)
    @river.remove_fish()
  end

end
