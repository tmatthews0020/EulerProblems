# this problem using combinatorics to build pascals triangle to find the 
# number of paths possible in a lattice path of n by n size in which
# you are only able to move over to the right and down
#
# (n)                 (n)!
# ---                -----
# (k)               k!(n-k)!
#
 



def number_combinations(n, k)
	numberOfCombinations = (factorial(n))/(factorial(k) * factorial(n - k))
	return numberOfCombinations
end 

def factorial(n)
	num = 1
	while(n > 1)
		num = num * n
		n = n - 1	
		puts num
	end
	return num
end

# the value of the combination of paths that are availilble in an  n X n grid is found
# by n * 2 (that is the row in pascals triangle) it's actual value is found in the center
# of pacals triangle (therefore it's "choose" k value is half of n * 2)

n = 3 # 20 x 20 grid
row = n * 2 # for claritys sake
answer = number_combinations(row, row/2)
puts "The amount of combinations of paths is #{answer}"




#
#
# with ryan
#
#
# what is the limit of the ratio of the centers of rows that correspond
# to the lattice paths combinations. 
