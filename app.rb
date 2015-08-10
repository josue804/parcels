require('sinatra')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/results') do
#  begin
    length  = params.fetch('length').to_i()
    width   = params.fetch('width').to_i()
    height  = params.fetch('height').to_i()
    @parcel = Parcel.new(length, width, height)

    miles = params.fetch('miles').to_i()
    days  = params.fetch('days').to_i()

    employee = params.fetch('employee')
    if employee.eql?("true")
      employee = true
    else
      employee = false
    end

    wrap = params.fetch('wrap_it')
    if wrap.eql?("true")
      wrap = true
    else
      wrap = false
    end

    @total  = @parcel.total(miles, days, wrap, employee)
    if @total < 5
      @total = 5
    end
    erb(:results)

#  rescue => e
#    erb(:index)
#  end
end
