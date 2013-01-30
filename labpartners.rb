puts "What is the group size?"


a = ("a".."z").to_a

a.shuffle

size_of_groups = 3
number_of_loops = (25/size_of_groups).to_i #=> 8

initial = 0

number_of_loops.times do


  a.each_with_index.map do |i, idx|
    "{i}" if idx % number_of_loops == initial
  end

  initial = initial + 1
end
  #take the array of names, start with the number 1, each time its divisible
  #by zero, select those names





