file = 'countries.txt'
num_of_countries = File.foreach(file).count
puts "There are #{num_of_countries} countries accounted for here. They are as follows:"

File.readlines(file).each do |line|
  puts line.gsub("|", " - ")

#	final = line.split.map(&:capitalize).join(' ')
# puts final

end