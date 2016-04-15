class Name
  def initialize(name)
    @name = name
  end

  def reversed_name
    reversed_name = []
    i = @name.length-1
    while i >= 0
      reversed_name.push(@name[i])
      i -= 1
    end
    reversed_name.join
  end

  def is_palindrome?
    @name == reversed_name
  end
end

# Driver Test

first_name = Name.new("racecar")
p first_name.is_palindrome? == true

second_name = Name.new("meow")
p second_name.is_palindrome? == false