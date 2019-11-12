require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../bears.rb")
require_relative("fish_spec.rb")
require_relative("bears_spec.rb")

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Cod")
    @river_fish = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @river_fish)
  end

  def test_river_has_name()
    assert_equal("Amazon", @river.river_name)
  end

  def test_fish_count()
    assert_equal(3, @river.fish_count())
  end

  def test_remove_fish()
    @river.remove_fish()
    assert_equal(2, @river.fish_count())
  end


end
