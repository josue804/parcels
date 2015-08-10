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

  define_method(:wrap) do |choice|
    if choice
    surface_area = (2 * (@length * @width) + 2 * (@width * @height) + 2 * (@length * @height))
    surface_area * 0.01
    else
      0
    end
  end

  define_method(:total) do |miles, days, wrap_choice|
    cost_to_ship(miles, days) + wrap(wrap_choice)
  end
end
