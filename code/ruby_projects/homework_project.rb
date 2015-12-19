dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "losangeless" => "213",
  "dalas" => "212",
  "burbank" => "732",
  "santamonica" => "213",
  "sandiego" => "212",
  "mesa" => "732",
  "northridge" => "213",
  "alhambra" => "626"
  }
def display_city_name(somename)
  somename.each {|k,v| puts k}
end

def display_areacode(hash, key)
  puts hash[key]
end

loop do
  puts "Do you want to look up an area code based on a city name?(N/Y)"
  prompt = gets.chomp.to_s
  if prompt != "Y"
    break
  else
    display_city_name(dial_book)
    puts "what is the city you want ?"
    answer = gets.chomp.to_s

    if dial_book.include?(answer)
      display_areacode(dial_book,answer)
    else
      puts "Your input is not vailad"
    end
  end
end
