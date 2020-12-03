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
        trail = routes.collect do |i|
            name["name"]
        end
    end

    def get_location
        location = routes.collect do |i|
            location["location"]
        end

        def get_rating
            rating = routes.collect do |i|
                rating["rating"]
            end

        end

    def self.all
        @@all
    end


end
