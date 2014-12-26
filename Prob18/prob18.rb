treeStr = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

t = Time.now()
################################################################################
##  Starting from the bottom - 1 check the elements directly below for the largest
##  combination.
##
###                        |   3 5   |
#                          | 4 5 6 3 |  from 3: 4 & 5 makes 9, 5 & 6 makes, 11.
#
## 11 is largest, so 11 + 3 = 14
#
#                           | 14 5 |
#                          | 4 5 6 3 |
#
################################################################################


#split string into array - newline delimited
tArray = treeStr.split("\n")
#convert to 2d array
vArray = tArray.collect {|x| x.split()}
# To use as a counter for replacing array with temp array
vLength = vArray.length - 1


def consolidate_triangle_vertically(vArray)
  vArray.reverse_each do |row|
    tArray = nil
    row.each do |ele|
      largest = check_for_largest_neighbor( ele, vArray.index(ele) + 1) # bug here exists when you have 2 of the same numbers in a single row
      tArray << largest # to be implemented, add these numbers to the layer above. 
    end

  end



end

def check_for_largest_neighbor{a,b}
  if( a > b)
    return a
  else
    return b
  end
end

puts "finished in #{(Time.now() - t).}"
