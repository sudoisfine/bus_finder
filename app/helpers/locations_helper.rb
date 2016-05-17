module LocationsHelper
  #Parse the API data to store it in a Ruby array of hashes - with each bus as a hash

  def fetch_buses_from_api(source_url)
    http = Net::HTTP.get_response(URI.parse(source_url))
    data = http.body
    JSON.parse(data)
  end

  def is_nearby?(user_lat, user_long, bus_lat, bus_long)

    max_distance = 0.01

    difference_of_latitudes = user_lat - bus_lat.to_f

    difference_of_longitudes = user_long - bus_long.to_f

    distance = Math.sqrt(difference_of_latitudes ** 2 + difference_of_longitudes ** 2)

    distance <= max_distance
  end
end


