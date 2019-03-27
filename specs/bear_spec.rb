require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new ("Salmon")
    @fish2 = Fish.new ("Tuna")
    @fish3 = Fish.new ("Trout")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_stomach_is_empty
    assert_equal(0, @bear.stomach_contents)
  end

  def test_takes_fish_from_river__1
    @bear.takes_fish_from_river(@river, @fish1)
    assert_equal(2, @river.amount_of_fish)
    assert_equal(1, @bear.stomach_contents)
  end

  def test_bear_takes_fish_from_river__2
    @bear.takes_fish_from_river(@river, @fish1)
    @bear.takes_fish_from_river(@river, @fish2)
    assert_equal(1, @river.amount_of_fish)
    assert_equal(2, @bear.stomach_contents)
  end

  def test_bear_takes_fish_from_river__3
    @bear.takes_fish_from_river(@river, @fish1)
    @bear.takes_fish_from_river(@river, @fish2)
    @bear.takes_fish_from_river(@river, @fish3)
    assert_equal(0, @river.amount_of_fish)
    assert_equal(3, @bear.stomach_contents)
  end
end
