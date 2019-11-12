require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Cod")
    @river_fish = [@fish1, @fish2, @fish3]
    @new_river = River.new("Amazon", @river_fish)
  end

  def test_can_create_river()
    assert_equal(River, @new_river.class())
  end

  def test_river_has_name()
    assert_equal("Amazon", @new_river.river_name())
  end

  def test_river_fish_count()
    assert_equal(3, @new_river.fish_count())
  end

  def test_remove_fish()
    @new_river.remove_fish(@fish1)
    assert_equal(2, @new_river.fish_count())
  end

end
