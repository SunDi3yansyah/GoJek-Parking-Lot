# frozen_string_literal: true

# :nodoc:
class FindCarByNumber
  # @param [Object] slots
  # @return [Object]
  def initialize(slots)
    @slots = slots
  end

  # @param [Object] vehicle_number
  # @return [Object]
  def find_slot(vehicle_number)
    slot = @slots.find do |s|
      s.vehicle_number == vehicle_number
    end

    puts slot ? slot.id : 'Not found'
  end
end
