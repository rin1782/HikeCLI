class CLI

    def start
        puts "**Welcome to Hiking Trails!**"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        sleep 2
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
            puts "Great! Here is a list of local trails you may be interested in!"
            sleep 3
            puts "Select the number Trail you'd like to see location and rating information about! Otherwise, type exit."
            input = gets.chomp
            exit_trails(input)
            index = input.to_i - 1 #need to end at index 49, or number 50
            trail = Trails.all[index]

            puts "Rating: #{trail.rating}"
            puts "Location: #{trail.location}"
            loop_trails
        end

        def loop_trails
            puts "Would you like to see another trail? (Y/N)"
            input = gets.chomp
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
