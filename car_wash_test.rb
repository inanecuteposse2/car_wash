gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'car_wash'
require 'pry'
class CarWashTest < Minitest::Test
 def test_class_exists 
  car_wash = CarWash.new("City, ST", 2005)
    assert_equal CarWash, (car_wash.class)
 end
  end
  