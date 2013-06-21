#质数又称素数。指在一个大于1的自然数中，除了1和此整数自身外，不能被其他自然数整除的数

#solution1: 假设要判断 x 是否为质数，就从 2 一直尝试到 x-1.
# 时间复杂度O(n)
def prime_first(num)
	return false if num < 2
	return true if num == 2
	  for i in (2...num)
 	  	return false if num % i == 0
 	  end
 	return true
end

#solution2:去掉偶数
#时间复杂度O(n/2), 速度提高一倍.
def prime_second(num)
	return false if num < 2
	return true if num == 2
	return false if num > 2 && num % 2 == 0 
	  for i in (3...num).step(2)
 	  	return false if num % i == 0
 	  end
 	return true
end

#solution3:定理: 如果n不是素数, 则n有满足1<d<=sqrt(n)的一个因子d.
#时间复杂度O(sqrt(n)/2)
def prime_third(num)
	return false if num < 2
	return true if num == 2
	return false if num > 2 && num % 2 == 0 
	  for i in (3...Math.sqrt(num)).step(2)
 	  	return false if num % i == 0
 	  end
 	return true
end


def test_prime(range)
	(2..range).each {|n|
		puts n if prime_third(n) == true
	}
end

test_prime(100)

#solution4: 筛选法
#首先，2是公认最小的质数，所以，先把所有2的倍数去掉；
#然后剩下的那些大于2的数里面，最小的是3，所以3也是质数；
#然后把所有3的倍数都去掉，剩下的那些大于3的数里面，最小的是5，所以5也是质数......
#上述过程不断重复，就可以把某个范围内的合数全都除去（就像被筛子筛掉一样），剩下的就是质数了

