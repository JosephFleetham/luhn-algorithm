module Luhn
  def self.is_valid?(number)
    number = number.to_s.split(//).reverse.map(&:to_i)
    number.each_with_index do |x, i|
      if number.index(x).odd?
        number[i] = x * 2
        if number[i] >= 10
          number[i] = number[i] - 9
        end
      end
    end
    sum = number.inject(0){|sum,x| sum + x }
    if sum % 2 == 0
      return true
    else
      return false
    end
  end
end
