class CLI

    def start
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "**Welcome to Hiking Trails!**"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Please enter your latitude"
        lat = gets.chomp #want to get a range here
        puts "Please enter your longitude "
        long = gets.chomp #want to accept a range here
        
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
            puts "Please select the number of the Trail to see rating and location or type exit"
            input = gets.chomp
            exit_trails(input)
            index = input.to_i - 1
            trail = Trails.all[index]

            puts "Rating: #{trail.rating}"
            puts "Location: #{trail.location}"
            loop_trails
        end

        def loop_trails
            puts "Would you like to see another trail? (Y/N)"
            input = gets.chomp.upcase
            if input == "y"
                display_trails
            else
                puts "~~~~~~~~~~~~~~"
                puts "Happy Trails!!"
                puts "~~~~~~~~~~~~~~"
                exit
            end
        end

        def exit_trails(input)

            if input == "exit"
                exit
            end
        end
end
