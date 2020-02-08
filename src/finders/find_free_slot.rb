# frozen_string_literal: true

# :nodoc:
class FindFreeSlot
  # @param [Object] slots
  # @return [Object]
  def find_parking_slot(slots)
    slots.find do |slot|
      slot.free?
    end
  end
end
