  numValues = { "1" => "one", "2" => "two", "3" => "three", "4" => "four",
                 "5" => "five", "6" => "six", "7" => "seven", "8" => "eight",
                 "9" => "nine", "10" => "ten", "11" => "eleven",
                 "12" => "twelve", "13" => "thirteen", "14" => "fourteen",
                 "15" => "fifteen", "16" => "sixteen", "17" => "seventeen",
                 "18" => "eighteen", "19" => "nineteen", "20" => "twenty",
                 "30" => "thirty", "40" => "forty", "50" => "fifty",
                 "60" => "sixty", "70" => "seventy", "80" => "eighty",
                 "90" => "ninety", "" => "", "00" => "", "0" => ""}



  def concatenate_numbers_to_string(num, numValues)
    length = num.to_s.length
    puts length
    numStr = num.to_s

  # if the number is included in the hash, return the hash value
    if(numValues[numStr])
      return numValues[numStr].split.join.length

  # if the str.length is equiv to 2 ie "90".length = 2
    elsif(length == 2)
        tensPlace = numStr[0] + "0"
        puts tensPlace
        onesPlace = numStr[1]
        str = numValues[tensPlace] + numValues[onesPlace]
        puts "The string is #{str}"
        return str.split.join.length

    elsif(length == 3)
      hundredsPlace = numStr[0]
      if (numStr[1].to_i < 2 && numStr[1].to_i > 0)
        tens = numStr[1] + numStr[2]
        onesPlace = ""
      elsif(numStr[1].to_i == 0 && numStr[2].to_i == 0)
        tens = ""
        onesPlace = ""
      else
        tens = numStr[1] + "0"
        onesPlace = numStr[2]
      end

      if(numStr.to_i % 100 == 0)
        str = numValues[hundredsPlace] + "hundred" + numValues[tens] + numValues[onesPlace]
      else
        str = numValues[hundredsPlace] + "hundredand" +numValues[tens] + numValues[onesPlace]
      end

      puts "The string is #{str}"
      return str.split.join.length
    else
      error = "We Have an Err Roar "
    end

  end


  num = 1
  sum = 0
  while num < 1000
    sum = sum + concatenate_numbers_to_string(num, numValues)
    puts "Current # is #{sum}"
    puts "Counter is at #{num}"
    num = num + 1
  end

  sum = sum + "onethousand".length #haha
  puts "the sum of length is #{sum}"
