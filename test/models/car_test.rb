require "test_helper"

describe Car do
  let(:car) {
    {
      'available_seats': 1,
      'model': 'Prius'
    }
   }

  it "must be valid" do
    value(car).must_be :valid?
  end
end
