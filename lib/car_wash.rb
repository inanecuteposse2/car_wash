class CarWash

    attr_reader :opening_year
                :location_city
                :location_state
                :no_of_employees

    def initialize (location, opening_year)
        @location_city = extract_city(location) 
        @location_state = extract_state(location)
        @opening_year = opening_year
        @no_of_employees = 0  
    end

    def extract_city(location)
    location.split(",")[0]
    end

    def extract_state(location)
    location.split(", ")[1]
    end

    def hire_employees(num)
    @no_of_employees += num
    end

    def years_open
    @years_open = Time.now.year - opening_year
    return "I am #{@years_open} years old."
    end

end
