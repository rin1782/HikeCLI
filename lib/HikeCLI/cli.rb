class CLI

    def start
        puts "Welcome to Hiking Trails!"
        puts "Please enter your latitude"
        lat = gets.chomp
        puts "Please enter your longitude "
        long = gets.chomp
        
        API.get_trails(lat, long)
            Trails.all.each.with_index(1) do |x, index|
            puts "#{index} - #{x.name}"
            end

            API.get_rating(trail)
            Trails.name
            binding.pry
        

    end
    
end
