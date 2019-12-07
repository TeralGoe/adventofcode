# DAY 1: The Tyranny of the Rocket Equation.
# What is the sum of the fuel requirements?
# *
# ~ https://adventofcode.com/2019/day/1
# *
class DayOne
  def part_one(f)
    [*IO.foreach(f)].map { |n| n.to_i / 3 - 2 }.reduce(:+)
  end
end

p "Part one: #{DayOne.new.part_one('input_1')}"
