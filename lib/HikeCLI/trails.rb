class Trails
    @@all = []
    attr_accessor :name, :location, :rating

    def initialize(name, location, rating)
        @name = name
        @location = location
        @rating = rating
        @@all << self
    end

    def get_trail
        trail_name = ("")

        trail = routes.collect do |i|
            name["name"]
            trail_name << trail
        end
        trail_name
    end

    def get_location
        location_name = []

        location = routes.collect do |i|
            location["location"]
            location_name << location
        end
        location_name
    end

        def get_rating

            rating = routes.collect do |i|
                rating["rating"]
            end
            puts rating
        end

    def self.all
        @@all
    end

end
