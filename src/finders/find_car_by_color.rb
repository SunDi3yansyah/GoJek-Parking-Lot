# frozen_string_literal: true

require_relative '../filters/filter_cars'

# :nodoc:
class FindCarByColor
  # @param [Object] color
  # @param [Object] slots
  # @return [Object]
  def find_registration_number(color, slots)
    filtered_cars = FilterCar.new(slots).filter_cars(
      'vehicle_number',
      'vehicle_color',
      color
    )
    print_data filtered_cars
  end

  # @param [Object] color
  # @param [Object] slots
  # @return [Object]
  def find_slot_number(color, slots)
    filtered_cars = FilterCar.new(slots).filter_cars('id', 'vehicle_color', color)
    print_data filtered_cars
  end

  private

  # @param [Object] filtered_cars
  # @return [Object]
  def print_data(filtered_cars)
    if filtered_cars.compact.empty?
      puts 'No Car Found'
    else
      puts filtered_cars.compact.join(', ')
    end
  end
end
