require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../bears.rb")
require_relative("../river.rb")

class TestBears < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Cod")
    @river_fish = [@fish1, @fish2, @fish3]
    @bear = Bears.new("Yogi", "Grizzly")
  end

  def test_can_create_bear()
    assert_equal(Bears, @bear.class())
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.bear_name())
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.bear_type())
  end

  def test_stomach_contents_empty()
    assert_equal(0, @bear.stomach_contents())
  end

  def test_take_fish()
    @bear.take_fish(@fish1)
    assert_equal(1, @bear.stomach_contents())
  end

  def test_take_fish_from_river()
    @new_river = River.new("Amazon", @river_fish)
    @bear.take_fish(@fish1)
    @new_river.remove_fish(@fish1)
    assert_equal(1, @bear.stomach_contents())
    assert_equal(2, @new_river.fish_count())
  end

  def test_bear_can_roar()
    assert_equal("ROOOOAAAAARRRRGH", @bear.roar())
  end

end
