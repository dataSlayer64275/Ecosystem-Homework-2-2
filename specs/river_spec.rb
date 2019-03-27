require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new ("Salmon")
    @fish2 = Fish.new ("Tuna")
    @fish3 = Fish.new ("Trout")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_got_fish
    assert_equal(3, @river.amount_of_fish)
  end
end
