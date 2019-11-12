require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../river.rb")
require_relative("river_spec.rb")

class TestBears < MiniTest::Test
  def setup
    @bear = Bears.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.bear_name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.bear_type)
  end

  def test_stomach_contents_empty
    assert_equal(0, @bear.stomach_contents())
  end

  def test_take_fish
    @bear.take_fish(@river_fish)
    assert_equal(1, @bear.stomach_contents())
  end

  def test_fish_removed_when_taken
    @bear.take_fish(@river_fish)
    assert_equal(2, @river.fish_count())
  end

end
