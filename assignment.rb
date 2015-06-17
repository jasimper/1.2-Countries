f = File.readlines('countries.txt')
num_of_countries = f.count 
	puts "There are #{num_of_countries} countries accounted for here. They are as follows:"

	f.each do |line|

		char_replace = line.gsub('|', ' - ')
		cap_string = char_replace.split.map {|w| w.capitalize}.join(' ')

 	puts cap_string

 		File.open('updated_countries.txt', 'a+') do |new_file| new_file.puts cap_string
		end

 end