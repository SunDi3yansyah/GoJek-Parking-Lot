# frozen_string_literal: true

require_relative 'src/parking_space'

# :nodoc:
class ParkingLot
  # @return [Object]
  def initialize
    @parking_space = nil
  end

  # @return [Array]
  def obtain_input
    return lz if ARGV.length.zero?

    pc
  end

  # @param [Object] input
  # @return [Object]
  def process_commands(input)
    input.split("\n").each do |i|
      create(i)
    end
  end

  # @param [Object] input
  # @return [ParkingSpace]
  def create(input)
    return nil if input == ''

    sliced_input = input.split(/\s/)
    command = sliced_input[0]

    if command == 'create_parking_lot'
      no_of_slots = sliced_input[1]
      @parking_space = ParkingSpace.new(no_of_slots)
    else
      @parking_space.send(command, *[sliced_input[1], sliced_input[2]].compact)
    end
  end

  private

  def pc
    input = File.read(ARGV[0])
    process_commands(input)
  rescue StandardError => e
    puts "Error processing input. Error - #{e}"
  end

  def lz
    while (input = gets.chomp) != 'exit'
      create(input)
    end
  end
end

begin
  ParkingLot.new.obtain_input
rescue NoMethodError => e
  puts "Error: #{e}"
end
