#rubyexcersizes

#1
arr = [1,2,3,4,5,6,7,8,9,10]

arr.each do |f|
	puts f.to_s
end

puts ''
puts ''	

#2
arr.each{ |f| puts f if f > 5}
puts ''
puts ''

#3 
arr.select {|v| puts v if v.odd? }
puts ''
puts ''

#4 
arr << 11
arr.unshift(0)
puts arr
puts ''
puts ''

#5
arr.pop
arr << 3
puts arr
puts ''

#6
arr.uniq!
puts arr

#7
#Main differences between an array and hash:
# Arrays are assigned in order [0,1,2,3,4] Hashs are Key value pairs
# arrays use [] and hashes use {}
#

#8
#1.8 
old = {:a => '1', :b => '2'}
#1.9
newer = {a: '1', b: '2'}
puts ''
puts ''

#9
h = {a:1, b:2, c:3, d:4}
puts h[:b]
puts ''

#10
h[:e] = 5

h.delete_if{|k, v| v < 3.5 }
puts h

