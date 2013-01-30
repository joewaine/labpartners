require 'pry-debugger'


n_stops = ["ts", "34", "28", "23n", "us", "8th"]
l_stops = ["8th_ave", "6th_ave", "us", "3rd", "1st"]
six_stops = ["gc", "33", "28_sixth", "23_sixth", "us", "astor"]

hash = {:n_train => n_stops, :l_train => l_stops, :six_train => six_stops}

#puts hash
puts "choose l_train, n_train, six_train to start"

init_subway = gets.chomp.downcase.to_sym
puts "choose the following stops #{hash[init_subway]}"
initial_stop = gets.chomp.downcase #8th avenue
puts "choose l_train, n_train, six_train for your final train"

last_subway = gets.chomp.downcase.to_sym
puts "choose the following stops #{hash[last_subway]}"
final_stop = gets.downcase.chomp #23_sixth

if init_subway == last_subway
  number_of_stops = (hash[last_subway].index(final_stop) - hash[init_subway].index(initial_stop)).abs
else
  #on initial train
  initial_to_us =  hash[init_subway].index(initial_stop) - hash[init_subway].index("us")
  #switch to final train
  #us_to_final

  us_to_final = hash[last_subway].index("us") - hash[last_subway].index(final_stop)

  number_of_stops = initial_to_us.abs + us_to_final.abs
end

puts "#{number_of_stops}"
