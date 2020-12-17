class CLI

    def start
        puts "    **Welcome to All Hikes**     "
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        sleep 2
        puts "Please enter latitude for your area"
        lat = gets.chomp
            puts "Great! Please enter longitude for your area"
        long = gets.chomp
       API.get_trails(lat, long)
       if Trail.all == [] 
        puts "I'm sorry, we cannot seem to find trails near you. Please enter another latitude/longitutde."
        start
       else
       display_trails
       end
    end

    def display_trails
        puts "Great! Here is a list of local trails you may be interested in!"
            sleep 2
        Trail.all.each.with_index(1) do |x, index|
            puts "#{index} - #{x.name}"
            end
                display_rating_location
        end

        def display_rating_location
            puts "************************************************************************************************"
            puts "Select the number of the Trail you'd like to see location and rating information about!"
            puts "Otherwise, type 'exit'"
            puts "************************************************************************************************"
            input = gets.chomp
            exit_trails(input)
            index = input.to_i - 1 
            check_input(index)
            trail = Trails.all[index]

            sleep 2
            puts "TRAIL: #{trail.name}'s' RATING is: #{trail.rating}."
            puts "----------------------------------------------"
            puts "----------------------------------------------"
            puts "TRAIL: #{trail.name}'s LOCATION is: #{trail.location}."
            puts "----------------------------------------------"
            puts "----------------------------------------------"
            sleep 2
            loop_trails
        end

        def check_input(input)
                if input < 1 || input >= Trails.all.length 
                    puts "!!!!!!ERROR: invalid choice!!!!!!"
                    puts "please enter a number from the list"
                display_rating_location
                end
        end

        def loop_trails
            puts "Would you like to see another trail? (Y/N)"
            input = gets.chomp
            if input == "y" || input == "Y"
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
                puts "~~~~~~~~~~~~~~"
                puts "Happy Trails!!"
                puts "~~~~~~~~~~~~~~"
                exit
            end
        end
end
