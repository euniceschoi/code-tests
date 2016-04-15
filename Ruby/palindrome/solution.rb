class Name
  def initialize(name)
    @name = name
  end

  def reversed_name
    @name.reverse
  end

  def is_palindrome?
    @name.downcase == reversed_name.downcase
  end
end

def find_palindrome(textfile)
  File.open(textfile, "r").each_line do |line|
    name = line.gsub("\n","")
    if Name.new(name).is_palindrome?
      p name
    end
  end
end

find_palindrome("names.txt")


# Driver Test

# first_name = Name.new("racecar")
# p first_name.is_palindrome? == true

# second_name = Name.new("meow")
# p second_name.is_palindrome? == false