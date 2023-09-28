def caesar_cipher(string, shift)
  encrypted = ""
  
string.split("").each do |i|
    if i.chars.any? { |char| ("a".."z").include? char.downcase}
      
      is_uppercase = i == i.upcase
      base = is_uppercase ? "A".ord : "a".ord
      
      shifted_charr = ((i.ord - base + shift) % 26 + base).chr

      encrypted << shifted_charr
    else
      encrypted << i
  end
      end

    encrypted
end

puts caesar_cipher("What a string!", 5)
