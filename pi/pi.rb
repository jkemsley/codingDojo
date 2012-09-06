def pi(v)

	pi = 0.0
	n = 1

	for i in 1..1000000
		pi += 1.0/n
		n += 2
		pi -= 1.0/n
		n += 2
	end

	(4*pi).round(v)

end

decp = gets.to_i

puts pi(decp)