# DAY 1: The Tyranny of the Rocket Equation.
# What is the sum of the fuel requirements?
# *
# ~ https://adventofcode.com/2019/day/1
# *
class DayOne
  attr_accessor :i

  def initialize
      self.i = [*IO.foreach('input')]
  end

  def solution(r = false)
    i.map { |n| r ? _r(n) : _m(n) }.reduce(:+)
  end

  def _r(n)
      x = _m(n)
      return x unless x > 0 && _r(x) > 0
      x += _r(x)
  end

  def _m(n)
    n.to_i / 3 - 2
  end
end

result = DayOne.new
p "Part one: #{result.solution}"
p "Part two: #{result.solution(r = true)}"
