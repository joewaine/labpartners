puts "What is the group size?"
#size_of_groups = gets.chomp.to_i
size_of_groups = 3
a = ("a".."z").to_a

a.shuffle


number_of_groups = (a.length.to_i/size_of_groups).to_i #=> 8

initial = number_of_groups -1

number_of_groups.times do

        array = Array.new

      a.each_with_index do |i, idx|
        if idx % number_of_groups == initial
            array.push(i)
        end
      end
  initial = initial - 1
  print array
end






