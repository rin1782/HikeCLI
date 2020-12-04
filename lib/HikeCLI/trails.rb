class Trails
    @@all = []
    attr_accessor :name, :location, :rating

    def initialize(name, location, rating)
        @name = name
        @location = location
        @rating = rating
        @@all << self
    end


    def self.all
        @@all
    end

end
