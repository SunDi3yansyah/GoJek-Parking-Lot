# frozen_string_literal: true

require_relative 'vehicle'

class VehicleAlreadyParked < StandardError; end

# :nodoc:
class Slot
  attr_accessor :id, :vehicle

  # @param [Object] id
  # @return [Object]
  def initialize(id)
    @id = id.to_i
  end

  # @param [Object] vehicle_number
  # @param [Object] vehicle_color
  # @return [Vehicle]
  def park(vehicle_number, vehicle_color)
    raise VehicleAlreadyParked if vehicle

    self.vehicle = ::Vehicle.new(vehicle_number, vehicle_color)
  end

  # @return [Object]
  def free
    self.vehicle = nil
  end

  # @return [TrueClass, FalseClass]
  def free?
    vehicle.nil?
  end

  # @return [Object]
  def vehicle_number
    vehicle&.vehicle_number
  end

  # @return [Object]
  def vehicle_color
    vehicle&.vehicle_color
  end
end
