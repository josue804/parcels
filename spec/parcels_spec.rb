require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume') do
      test_triangle = Parcel.new(10, 10, 10)
      expect(test_triangle.volume()).to(eq(1000))
    end
  end
end
