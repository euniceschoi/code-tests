class Number
  def initialize(number)
    @number = number
  end

  def sum_of_digits
    @number.to_s.chars.map(&:to_i).reduce(:+)
  end
end

def find_total_sum(textfile)
  total_sum = 0
  File.open(textfile, "r").each_line do |line|
    number = line.gsub("\n","")
    total_sum += Number.new(number).sum_of_digits
  end
  total_sum
end

p find_total_sum("numbers.txt")


# Driver Test

# test_number= Number.new(1234)
# p test_number.sum_of_digits == 10

