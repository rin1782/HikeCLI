class Trail
    @@all = []
    attr_reader :name, :location, :rating

    # attr_reader 
    # attr_writer


    def initialize(name, location, rating)
        @name = name
        @location = location
        @rating = rating
        @@all << self
    end


    def self.all
        @@all
    end

    def self.name_finder(name)
    
        @@all.find {|trail|  name == trail.name}
            
        end
    end
    
end


# def name_finder(name)
    
#     @@all.find {|trail|  name == trail.name}
# end


