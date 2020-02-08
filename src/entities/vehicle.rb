# frozen_string_literal: true

# :nodoc:
class Vehicle
  attr_accessor :vehicle_number, :vehicle_color

  # @param [Object] vehicle_number
  # @param [Object] vehicle_color
  # @return [Object]
  def initialize(vehicle_number, vehicle_color)
    @vehicle_number = vehicle_number
    @vehicle_color = vehicle_color
  end
end
