#sum of digits of 2 ^ 1000 (2 to the one thousandth power)
#



 power = 1000 #exponent
 num = 2 # base
 total = 1 # counter
 
while(power >= 1)
         total = total * num
         power = power - 1
         puts power
 end
 
#convert bignum to string
total_in_string = total.to_s
  
#convert string to array of strings
array = total_in_string.scan /\w/
 
#convert each element of the array to fixnum integer
array.map! {|x| x.to_i }
 
puts "the current array is "
print array

#enumerate sum of each element in the array
total = array.inject {|sum, x| sum + x }
  
puts total

