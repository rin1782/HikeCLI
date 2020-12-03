class CLI

    def start
        puts "Welcome to Hiking Trails!"
        puts "Please enter your latitude"
        lat = gets.chomp
        puts "Please enter your longitude "
        long = gets.chomp
        
        API.get_trails(lat, long)
           display_trails
    end

    def display_trails
        Trails.all.each.with_index(1) do |x, index|
            puts "#{index} - #{x.name}"
            end
            display_rating_location
        end

        def display_rating_location
            puts "Please select a trail to see rating and location or type exit"
            input = gets.chomp
            exit_trails(input)
            index = input.to_i - 1
            trail = Trails.all[index]

            puts "Rating: #{trail.rating}"
            puts trail.location
            loop_trails
        end

        def loop_trails
            puts "Would you like to see another trail? (y/n)"
            input = gets.chomp
            if input == "y"
                display_trails
            else
                puts "Thanks for coming!"
                exit
            end
        end

        def exit_trails(input)

            if input == "exit"
                exit
            end
        end
end
