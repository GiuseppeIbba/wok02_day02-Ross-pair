require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class TestBus < MiniTest::Test


#Give the Bus class a new property, 'passengers'. This should be an array, which starts off empty.

  def setup
    @person = Person.new("Charles", "34")
    @bus = Bus.new("26", "Easter Road")
  end

def test_drive
  assert_equal("Brum Brum", @bus.drive)
end

  def test_passengers_aboard
    actual = @bus.passengers_aboard()
    assert_equal(0, actual)
  end

#Add a method to the Bus class which takes in a Person and adds it to the array of passengers. The method could look something like bus.pick_up(passenger1)

# def test_bus_pick
#
  def test_can_pick_up_passenger
    @bus.pick_up(@person)
    assert_equal(1, @bus.passengers_aboard())
  end

  def test_can_drop_off_passenger
    @bus.drop_off(@person)
    assert_equal(0, @bus.passengers_aboard())
  end


end
