require 'rational'

r1 = RationalNumber.new(3, 7)
r2 = RationalNumber.new(12, 19)

puts r1.mcd
puts r1 - r2
puts r1 * r2
puts r1 / r2
puts r1 % r2
puts r1 < r2
puts r1 > r2
puts r1 <= r2
puts r1 >= r2
puts r1 * 5
puts r1 + 5
puts 2 / r1
puts r1 / 2
puts r1 / 'b'
