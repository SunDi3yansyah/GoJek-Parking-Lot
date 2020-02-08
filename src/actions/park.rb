# frozen_string_literal: true

# :nodoc:
class Park
  # @param [Object] vehicle_number
  # @param [Object] vehicle_color
  # @param [Object] slot
  # @return [Object]
  def park_my_vehicle(vehicle_number, vehicle_color, slot)
    puts "Allocated slot number: #{slot.id}"
    slot.park(vehicle_number, vehicle_color)
  end
end
