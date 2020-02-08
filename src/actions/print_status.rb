# frozen_string_literal: true

# :nodoc:
class PrintStatus
  # @param [Object] slots
  # @return [Object]
  def initialize(slots)
    @slots = slots
  end

  # @return [Object]
  def print_status
    puts 'Slot No.    Registration No    Colour'
    @slots.each do |slot|
      puts "#{slot.id}           #{slot.vehicle_number}      #{slot.vehicle_color}" unless (slot.free?)
    end
  end
end
