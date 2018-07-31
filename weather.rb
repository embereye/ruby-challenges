require 'barometer'

#get location. specified zip code to make it easy to get information.
def get_location
puts "What is your zip code?"
location = gets
end

def new_weather
  #need to pull that location information for this method
  location = get_location
#this is a standard barometer information
  barometer = Barometer.new(location)
  weather = barometer.measure
  current_weather = weather.current.icon
  puts "The weather outside right now is #{current_weather}!"
end

new_weather
