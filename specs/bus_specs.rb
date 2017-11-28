require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new("26", "Easter Road")
  end

end
