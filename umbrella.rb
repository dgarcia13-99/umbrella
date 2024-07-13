require "http"
require "json"

puts "Welcome to the Umbrella App!"
puts "\n"
puts "Lets check whether you'll need an umbrella today"
puts "\n"
puts "Enter a location:"
location = gets.chomp

#API call to fetch location latitude and longitude information
access_gmaps_key = ENV.fetch("GMAPS_KEY")
gmaps_location= HTTP.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{location}key=#{access_gmaps_key}")
puts gmaps_location


