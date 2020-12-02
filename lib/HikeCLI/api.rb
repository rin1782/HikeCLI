class API
    def self.get_trails(lat, long)
        key = "200986358-fff9d40fea396792e2c2e323c6e332ba"
        url = "https://www.mountainproject.com/data/get-routes-for-lat-lon?lat=#{lat}&lon=#{long}&key=#{key}"
        response = HTTParty.get(url)
        response.parsed_response
        binding.pry
        Trails.new(lat, long)
        
        
        
       


    end

end
