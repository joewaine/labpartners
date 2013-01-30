puts "What is the group size?"


a = ("a".."z").to_a

a.shuffle

size_of_groups = 3
number_of_loops = (25/size_of_groups).to_i #=> 8

initial = 0
array_i = 0
number_of_loops.times do

        array = Array.new

      a.each_with_index.collect do |i, idx|
        if idx % number_of_loops == initial
            array.push(i)
        end
      end
  #3 names to put into an array
  initial = initial + 1
  print array
end
  #take the array of names, start with the number 1, each time its divisible
  #by zero, select those names





