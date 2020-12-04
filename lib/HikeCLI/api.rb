class API
    def self.get_trails(lat, long)
        key = "200986358-fff9d40fea396792e2c2e323c6e332ba"
        url = "https://www.mountainproject.com/data/get-routes-for-lat-lon?lat=#{lat}&lon=#{long}&key=#{key}"
        response = HTTParty.get(url)
        response.parsed_response
        response["routes"].each do |i|
            name = i["name"]
            rating = i["rating"]
            location = i["location"].join(", ")
            Trails.new(name, location, rating)
        

        end
# binding.pry

    end

end
