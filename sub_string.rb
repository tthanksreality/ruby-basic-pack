dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  substring_counts = {}

  words = string.split(' ')

  words.each do |word|
  dictionary.each do |substring|
    if word.downcase.include?(substring.downcase)
      substring_counts[substring] ||= 0
      substring_counts[substring] += 1
    end
  end
end
substring_counts
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
