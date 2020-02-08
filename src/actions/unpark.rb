# frozen_string_literal: true

# :nodoc:
class Unpark
  attr_accessor :slots, :slot_number

  # @param [Object] slots
  # @param [Object] slot_number
  # @return [Object]
  def initialize(slots, slot_number)
    @slots = slots
    @slot_number = slot_number.to_i
  end

  # @return [Object]
  def unpark
    if slot_number.positive? && slot_number <= slots.length
      slots[slot_number - 1].free
      puts "Slot number #{slot_number.to_i} is free"
    else
      puts 'Invalid slot number'
    end
  end
end
