require 'rational'

r1 = RationalNumber.new(6, 4)
r2 = RationalNumber.new(12, 19)

puts r1.mcd
puts r1.mcd r2
puts r1.mcm r2
puts r1 - r2
puts r1 * r2
puts r1 / r2
puts r1 % r2
puts r1 < r2
puts r1 > r2
puts r1 <= r2
puts r1 >= r2