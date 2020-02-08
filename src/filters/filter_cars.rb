# frozen_string_literal: true

# :nodoc:
class FilterCar
  # @param [Object] slots
  # @return [Object]
  def initialize(slots)
    @slots = slots
  end

  # @param [Object] filtered_value
  # @param [Object] filter_by
  # @param [Object] filter
  # @return [Object]
  def filter_cars(filtered_value, filter_by, filter)
    @slots.collect do |slot|
      slot.send(filtered_value) if slot.send(filter_by) == filter
    end
  end
end
