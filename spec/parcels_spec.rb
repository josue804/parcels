require('rspec')
require('parcels')

describe(Parcel) do

  describe('#volume') do
    it('returns the volume') do
      test_parcel = Parcel.new(10, 10, 10)
      expect(test_parcel.volume()).to(eq(1000))
    end
  end

  describe('#cost_to_ship') do
    it('returns the expense of parcel shipment') do
      test_parcel = Parcel.new(10, 10, 10)
      expect(test_parcel.cost_to_ship(5000, 2)).to(eq(8))
    end
  end

  describe('#wrap') do
    it('returns the cost of gift wrapping the parcel') do
      test_parcel = Parcel.new(10, 10, 10)
      expect(test_parcel.wrap(true)).to(eq(6))
    end
  end

  describe('#total') do
    it('returns the total cost of shipping and handling the parcel') do
      test_parcel = Parcel.new(10, 10, 10)
      expect(test_parcel.total(5000, 2, true, true)).to(eq(12.6))
    end
  end

  describe('#discount?') do
    it('returns $0 discount by default') do
      test_parcel = Parcel.new(10, 10, 10)
      expect(test_parcel.discount?()).to(eq(1))
    end

    it('returns true if the person is an employee') do
      test_parcel = Parcel.new(10, 10, 10)
      expect(test_parcel.discount?(true)).to(eq(0.90))
    end
  end
end
