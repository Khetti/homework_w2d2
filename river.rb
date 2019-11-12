class River

attr_reader :river_name

  def initialize(river_name, river_fish)
    @river_name = river_name
    @river_fish = river_fish
  end

  def fish_count()
    return @river_fish.length()
  end

  def remove_fish()
    @river_fish.shift()
  end

end
