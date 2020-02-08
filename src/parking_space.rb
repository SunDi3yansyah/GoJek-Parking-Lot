# frozen_string_literal: true

require_relative 'entities/slots'
require_relative 'actions/park'
require_relative 'finders/find_free_slot'
require_relative 'actions/unpark'
require_relative 'actions/print_status'
require_relative 'finders/find_car_by_color'
require_relative 'finders/find_car_by_number'

# :nodoc:
class ParkingSpace
  attr_accessor :slots

  # @param [Object] number_of_slots
  # @return [Object]
  def initialize(number_of_slots)
    @slots = []

    number_of_slots.to_i.times do |index|
      slot_number = index + 1
      slots[index] = Slot.new(slot_number)
    end

    puts "Created a parking lot with #{number_of_slots} slots"
  end

  # @param [Object] vehicle_number
  # @param [Object] vehicle_color
  # @return [Object]
  def park(vehicle_number, vehicle_color)
    free_slot = FindFreeSlot.new.find_parking_slot slots

    if free_slot
      Park.new.park_my_vehicle(vehicle_number, vehicle_color, free_slot)
    else
      parking_lot_full_handler
    end
  end

  # @param [Object] slot_number
  # @return [Object]
  def leave(slot_number)
    Unpark.new(slots, slot_number).unpark
  end

  # @return [Object]
  def status
    PrintStatus.new(slots).print_status
  end

  # @param [Object] color
  # @return [Object]
  def rnfcwc(color)
    FindCarByColor.new.find_registration_number color, slots
  end
  alias registration_numbers_for_cars_with_colour rnfcwc

  # @param [Object] color
  # @return [Object]
  def snfcwc(color)
    FindCarByColor.new.find_slot_number color, slots
  end
  alias slot_numbers_for_cars_with_colour snfcwc

  # @param [Object] vehicle_number
  # @return [Object]
  def snfrn(vehicle_number)
    FindCarByNumber.new(slots).find_slot vehicle_number
  end
  alias slot_number_for_registration_number snfrn

  private

  # @return [Object]
  def parking_lot_full_handler
    puts 'Sorry, parking lot is full'
  end
end
