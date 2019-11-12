require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new("Salmon")
  end

  def test_create_fish()
    assert_equal(Fish, @fish.class())
  end

  def test_fish_has_name()
    assert_equal("Salmon", @fish.fish_name())
  end

end
