def run_file
  zip_codes = {
      'Port Elizabeth' => '6001',
      'East London' => '5241',
      'Joburg' => '2000',
      'Cape Town' => '6665'
  }

  loop do
    prompt = get_input("\n\nWould you like to look up a zip code? (Y/N)\n")

    break unless prompt == 'Y'

    display_cities(zip_codes)

    input = get_input('Enter your selection > ')

    code = zip_codes.include?(input) ? zip_codes[input] : nil

    puts "The zip code for #{input} is #{code}" unless code.nil?
  end
end

def titleize(string)
  # new_string = string.split(' ').map{|word| word.capitalize}.join(' ')
  new_string = string.split(' ').map(&:capitalize).join(' ')
end

def display_cities(zip_codes)
  zip_codes.each do |city, zip_code|
    puts '- ' + city
  end

  puts 'Which city do you want to lookup zip codes for?'
end

def get_input(prompt)
  print prompt
  input = titleize(gets.chomp)
end

run_file


