class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
    volume
  end

  define_method(:volume) do
    @volume = @length * @width * @height
  end

  define_method(:cost_to_ship) do |miles, days|
    (miles * 0.2 + @volume * 0.2 - days * 200)/100
  end
end
