gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car_wash'
require 'pry'
class CarWashTest < Minitest::Test
    def test_class_exists 
        car_wash = CarWash.new("City, ST", 2005)
        assert_equal CarWash, (car_wash.class)
    end
end
#def test_if_class_exists
#assert_instance_of CarWash, CarWash.new("Denver, CO", 2005)
#end
    def test_it_has_an_opening_year
        car_wash = CarWash.new("Denver, CO", 2005)
        assert_equal 2005, car_wash.opening_year
    end

    def test_it_has_a_location_city
        car_wash = CarWash.new("Denver, CO", 2005)
        assert_equal "Denver", car_wash.location_city
    end

    def test_it_has_a_location_state
        car_wash = CarWash.new ("Denver, CO", 2005)
        assert_equal "CO", car_wash.location_state
    end

    def test_it_has_no_employees
        car_wash = CarWash.new("Denver, CO", 2005)
        assert_equal 0, car_wash.no_of_employees
    end

    def test_it_can_hire_employees
        car_wash = CarWash.new( "Denver, CO", 2005)
        car_wash.hire_employees(3)
        assert_equal 3, car_wash.no_of_employees
    end

    def test_it_can_hire_employees_in_batches
        car_wash = CarWash.new("Denver, CO", 2005)
        car_wash.hire_employees(3)
        assert_equal 3, car_wash.no_of_employees

        car_wash.hire_employees(4)
        assert_equal 7, car_wash.no_of_employees
    end

    def test_it_can_extract_city
        car_wash = CarWash.new("Denver, CO", 2005)
        assert_equal "Denver", car_wash.extract_city("Denver, CO")
    end

    def test_how_long_it_has_been_open
        car_wash = CarWash.new("Denver, CO", 2005)
        assert_equal "I am 11 years old", car_wash.years_open
    end
end