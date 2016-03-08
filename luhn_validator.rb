module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    # TODO: use the integers in nums_a to validate its last check digit
    total=0
    nums_a[0...-1].reverse.each_with_index{|value,index| (index%2==0)? (value*2>9? total+=2*value-9:total+=2*value) :total+=value }
    return ((10-(total%10))%10 == nums_a[-1])
	end
end
