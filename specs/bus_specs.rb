require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new("26", "Easter Road")
  end

def test_drive
  assert_equal("Brum Brum", @bus.drive)
end



end
